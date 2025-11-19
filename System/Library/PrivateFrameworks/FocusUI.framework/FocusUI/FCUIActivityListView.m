@interface FCUIActivityListView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)touchesShouldCancelInContentView:(id)a3;
- (CGRect)_contentViewFrameForContentSize:(CGSize)a3 inBounds:(CGRect)a4;
- (CGRect)_setContractedFrame:(CGRect)a3 viaResizeWithRepresentedActivity:(id)a4 transitionCoordinator:(id)a5;
- (CGRect)_setContractedFrame:(CGRect)a3 viaScaleWithRepresentedActivity:(id)a4 transitionCoordinator:(id)a5;
- (CGRect)_setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 representedActivity:(id)a5 anchorActivityView:(id)a6 collapsedSizeBlock:(id)a7 preludeBlock:(id)a8 activityViewAnimationBlock:(id)a9 transitionCoordinator:(id)a10;
- (CGRect)_setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 viaResizeWithRepresentedActivity:(id)a5 transitionCoordinator:(id)a6;
- (CGRect)_setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 viaScaleWithRepresentedActivity:(id)a5 transitionCoordinator:(id)a6;
- (CGRect)setContractedFrame:(CGRect)a3 representedActivity:(id)a4 presentationStyle:(int64_t)a5 transitionCoordinator:(id)a6;
- (CGRect)setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 representedActivity:(id)a5 presentationStyle:(int64_t)a6 transitionCoordinator:(id)a7;
- (CGSize)_contentSizeForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FCUIActivityListView)initWithFrame:(CGRect)a3;
- (id)_activityViewForRepresentedActivity:(id)a3;
- (id)_orderedSubviewsIncludingHeader:(BOOL)a3 andFooter:(BOOL)a4;
- (void)_configureContentViewIfNecessary;
- (void)_invalidateContentSize;
- (void)_recalculateContentSize;
- (void)endIsolation;
- (void)isolateActivityView:(id)a3 withInset:(UIEdgeInsets)a4;
- (void)layoutSubviews;
- (void)resetScrollForStaticPresentation;
- (void)setActivityViews:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setExpandedActivityView:(id)a3 withTransitionCoordinator:(id)a4;
- (void)setFooterPinnedToBottom:(BOOL)a3;
- (void)setFooterView:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHeaderView:(id)a3;
- (void)setNeedsLayout;
@end

@implementation FCUIActivityListView

- (FCUIActivityListView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = FCUIActivityListView;
  v3 = [(FCUIActivityListView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FCUIActivityListView *)v3 setClipsToBounds:0];
    [(FCUIActivityListView *)v4 setAlwaysBounceVertical:1];
    [(FCUIActivityListView *)v4 setShowsVerticalScrollIndicator:0];
    [(FCUIActivityListView *)v4 setShowsHorizontalScrollIndicator:0];
    [(FCUIActivityListView *)v4 setAccessibilityIdentifier:@"focus-modes-ui"];
    v4->_footerPinnedToBottom = 1;
  }

  return v4;
}

- (void)resetScrollForStaticPresentation
{
  p_initialContentOffset = &self->_initialContentOffset;
  [(FCUIActivityListView *)self contentOffset];
  p_initialContentOffset->x = v4;
  p_initialContentOffset->y = v5;

  [(FCUIActivityListView *)self _recalculateContentSize];
}

- (void)setActivityViews:(id)a3
{
  v6 = a3;
  v4 = [(FCUIActivityListView *)self activityViews];
  v5 = BSEqualArrays();

  if ((v5 & 1) == 0)
  {
    [(FCUIActivityListView *)self _configureContentViewIfNecessary];
    [(FCUIActivityListContentView *)self->_contentView setActivityViews:v6];
    [(FCUIActivityListView *)self _invalidateContentSize];
    [(FCUIActivityListContentView *)self->_contentView setNeedsLayout];
  }
}

- (void)setHeaderView:(id)a3
{
  v7 = a3;
  v4 = [(FCUIActivityListView *)self headerView];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = v7;
    if (v7)
    {
      [(FCUIActivityListView *)self _configureContentViewIfNecessary];
      v6 = v7;
    }

    [(FCUIActivityListContentView *)self->_contentView setHeaderView:v6];
    [(FCUIActivityListView *)self _invalidateContentSize];
  }
}

- (void)setFooterView:(id)a3
{
  v7 = a3;
  v4 = [(FCUIActivityListView *)self footerView];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = v7;
    if (v7)
    {
      [(FCUIActivityListView *)self _configureContentViewIfNecessary];
      v6 = v7;
    }

    [(FCUIActivityListContentView *)self->_contentView setFooterView:v6];
    [(FCUIActivityListView *)self _invalidateContentSize];
  }
}

- (void)setFooterPinnedToBottom:(BOOL)a3
{
  if (self->_footerPinnedToBottom != a3)
  {
    self->_footerPinnedToBottom = a3;
    [(FCUIActivityListContentView *)self->_contentView setFooterPinnedToBottom:?];

    [(FCUIActivityListView *)self _invalidateContentSize];
  }
}

- (CGRect)_setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 representedActivity:(id)a5 anchorActivityView:(id)a6 collapsedSizeBlock:(id)a7 preludeBlock:(id)a8 activityViewAnimationBlock:(id)a9 transitionCoordinator:(id)a10
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v130 = *MEMORY[0x277D85DE8];
  v104 = a5;
  v99 = a6;
  v20 = a7;
  v106 = a8;
  v21 = a9;
  v22 = a10;
  [(FCUIActivityListView *)self _configureContentViewIfNecessary];
  contentView = self->_contentView;
  BSRectWithSize();
  [(FCUIActivityListView *)self _contentSizeForBounds:?];
  v25 = v24;
  v27 = v26;
  BSRectWithSize();
  [(FCUIActivityListView *)self _contentViewFrameForContentSize:v25 inBounds:v27, v28, v29, v30, v31];
  v109 = [(FCUIActivityListContentView *)contentView subviewFramesInBounds:?];
  v32 = [(FCUIActivityListContentView *)self->_contentView activityViews];
  v107 = v22;
  [v22 transitionDuration];
  v34 = v33;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v32;
  v35 = [obj countByEnumeratingWithState:&v124 objects:v129 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v125;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v125 != v37)
        {
          objc_enumerationMutation(obj);
        }

        if (v34 > 0.0)
        {
          v39 = *(*(&v124 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;
          BSRectWithSize();
          [v41 willPresent:1 withTargetContainerBounds:v107 transitionCoordinator:?];
        }
      }

      v36 = [obj countByEnumeratingWithState:&v124 objects:v129 count:16];
    }

    while (v36);
  }

  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke;
  v122[3] = &unk_27901A3D0;
  v102 = v104;
  v123 = v102;
  v42 = [obj bs_firstObjectPassingTest:v122];
  [(FCUIActivityListContentView *)self->_contentView setCompactActivityView:v42];
  v43 = [(FCUIActivityListView *)self _orderedSubviewsIncludingHeader:1 andFooter:1];
  v44 = [(FCUIActivityListContentView *)self->_contentView footerView];
  v45 = v44;
  if (v44)
  {
    v46 = MEMORY[0x277D75D18];
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke_2;
    v120[3] = &unk_27901A470;
    v121 = v44;
    [v46 performWithoutAnimation:v120];
  }

  v98 = v45;
  v105 = v20;
  v47 = (*(v20 + 2))(v20);
  v49 = v48;
  [(FCUIActivityListContentView *)self->_contentView setCollapsedSize:?];
  v106[2](v47, v49);
  [(FCUIActivityListView *)self setFrame:x, y, width, height];
  [(FCUIActivityListView *)self _recalculateContentSize];
  [(FCUIActivityListContentView *)self->_contentView setCollapsedSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke_3;
  aBlock[3] = &__block_descriptor_40_e23_v40__0d8d16q24___v___32l;
  v103 = v34;
  *&aBlock[4] = v34;
  v50 = _Block_copy(aBlock);
  v101 = v42;
  if (v99)
  {
    v51 = v99;
  }

  else
  {
    v51 = v42;
  }

  v52 = v51;

  v53 = [v43 indexOfObject:v52];
  v100 = v52;
  v54 = [v109 objectForKey:v52];
  [v54 CGRectValue];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v118 = 0u;
  v116 = 0u;
  v117 = 0u;
  v115 = 0u;
  v63 = v43;
  v64 = [v63 countByEnumeratingWithState:&v115 objects:v128 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v116;
    do
    {
      for (j = 0; j != v65; ++j)
      {
        if (*v116 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v115 + 1) + 8 * j);
        v69 = [v109 objectForKey:v68];
        [v69 CGRectValue];
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;

        v78 = [v63 indexOfObject:v68];
        if (v53 - v78 >= 0)
        {
          v79 = v53 - v78;
        }

        else
        {
          v79 = v78 - v53;
        }

        v21[2](v21, v68, v79, v50, v71, v73, v75, v77, v56, v58, v60, v62);
      }

      v65 = [v63 countByEnumeratingWithState:&v115 objects:v128 count:16];
    }

    while (v65);
  }

  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke_4;
  v112[3] = &unk_27901A380;
  v80 = v98;
  v113 = v80;
  v81 = v109;
  v114 = v81;
  v82 = _Block_copy(v112);
  v83 = v82;
  if (v103 <= 0.0)
  {
    v82[2](v82, v103);
    v84 = v107;
  }

  else
  {
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke_6;
    v110[3] = &unk_27901A888;
    v111 = v82;
    v84 = v107;
    [v107 animateAlongsideTransition:0 completion:v110];
  }

  v85 = [v101 superview];
  [v101 frame];
  [v85 convertRect:0 toView:?];
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;

  v94 = v87;
  v95 = v89;
  v96 = v91;
  v97 = v93;
  result.size.height = v97;
  result.size.width = v96;
  result.origin.y = v95;
  result.origin.x = v94;
  return result;
}

uint64_t __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activityIdentifier];
  v5 = [v3 activityIdentifier];

  v6 = BSEqualObjects();
  return v6;
}

void __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = a3;
  if (*(a1 + 32) <= 0.0)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v15 = v9;
    v9[2]();
  }

  else
  {
    if (a2 <= 0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = a4 + a5 * a2;
    }

    v15 = v9;
    v11 = objc_alloc(MEMORY[0x277D75D40]);
    v12 = *(a1 + 32);
    v13 = [objc_alloc(MEMORY[0x277D75A60]) initWithMass:2.0 stiffness:300.0 damping:38.0 initialVelocity:{0.0, 0.0}];
    v14 = [v11 initWithDuration:v13 timingParameters:v12];

    [v14 addAnimations:v15];
    [v14 startAnimationAfterDelay:v10];
  }

  v9 = v15;
LABEL_9:
}

void __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke_5;
  v6 = &unk_27901A380;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v2 performWithoutAnimation:&v3];
  [*(a1 + 32) setAlpha:{1.0, v3, v4, v5, v6}];
}

void __175__FCUIActivityListView__setExpandedFrame_initialFrame_representedActivity_anchorActivityView_collapsedSizeBlock_preludeBlock_activityViewAnimationBlock_transitionCoordinator___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectForKey:v1];
  [v2 CGRectValue];
  [v1 setFrame:?];
}

- (CGRect)_setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 viaScaleWithRepresentedActivity:(id)a5 transitionCoordinator:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.size.height;
  v12 = a3.size.width;
  v13 = a3.origin.y;
  v14 = a3.origin.x;
  v16 = a5;
  v17 = a6;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x5010000000;
  v33[3] = &unk_24BB51C3A;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke;
  v32[3] = &unk_27901A8B0;
  v32[4] = self;
  *&v32[5] = v14;
  *&v32[6] = v13;
  *&v32[7] = v12;
  *&v32[8] = v11;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_2;
  v31[3] = &unk_27901A8D8;
  *&v31[6] = x;
  *&v31[7] = y;
  *&v31[8] = width;
  *&v31[9] = height;
  v31[4] = self;
  v31[5] = v33;
  *&v31[10] = v14;
  *&v31[11] = v13;
  *&v31[12] = v12;
  *&v31[13] = v11;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_4;
  v30[3] = &unk_27901A928;
  *&v30[6] = x;
  *&v30[7] = y;
  *&v30[8] = width;
  *&v30[9] = height;
  v30[4] = self;
  v30[5] = v33;
  [(FCUIActivityListView *)self _setExpandedFrame:v16 initialFrame:0 representedActivity:v32 anchorActivityView:v31 collapsedSizeBlock:v30 preludeBlock:v17 activityViewAnimationBlock:v14 transitionCoordinator:v13, v12, v11, x, y, width, height];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  _Block_object_dispose(v33, 8);

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

uint64_t __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_2(uint64_t a1, double a2, double a3)
{
  v5 = CGRectGetWidth(*(a1 + 48)) / a2;
  Height = CGRectGetHeight(*(a1 + 48));
  CGAffineTransformMakeScale(&v14, v5, Height / a3);
  v7 = *(*(a1 + 40) + 8);
  v8 = *&v14.tx;
  v7[3] = *&v14.c;
  v7[4] = v8;
  v7[2] = *&v14.a;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v9 = *(a1 + 96);
  v12 = *(a1 + 80);
  v13 = v9;
  v11[2] = __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_3;
  v11[3] = &unk_27901A790;
  v11[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] performWithoutAnimation:v11];
}

uint64_t __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) _invalidateContentSize];
  v2 = *(a1 + 32);

  return [v2 layoutSubviews];
}

void __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_4(_OWORD *a1, void *a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a2;
  v16 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_5;
  v28[3] = &unk_27901A900;
  v17 = v15;
  v29 = v17;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v18 = a1[2];
  v35 = a1[3];
  v36 = a1[4];
  v30 = v18;
  v19 = a4;
  [v16 performWithoutAnimation:v28];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_6;
  v22[3] = &unk_27901A790;
  v23 = v17;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v20 = v19[2];
  v21 = v17;
  v20(v19, a3, v22, 0.045, 0.025);
}

uint64_t __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 2152) convertRect:0 fromView:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  UIRectCenteredIntegralRectScale();
  [v2 setFrame:0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  v5 = v4[3];
  v7[0] = v4[2];
  v7[1] = v5;
  v7[2] = v4[4];
  [v3 setTransform:v7];
  return [*(a1 + 32) setAlpha:0.0];
}

void __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v13.minimum;
  maximum = v13.maximum;
  preferred = v13.preferred;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_7;
  v9[3] = &unk_27901A790;
  v10 = *(a1 + 32);
  v6 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v6;
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1703937 updateReason:v9 animations:{*&v6, v7, v8}];
}

uint64_t __109__FCUIActivityListView__setExpandedFrame_initialFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  return [*(a1 + 32) setAlpha:1.0];
}

- (CGRect)_setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 viaResizeWithRepresentedActivity:(id)a5 transitionCoordinator:(id)a6
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke;
  v14[3] = &__block_descriptor_64_e15__CGSize_dd_8__0l;
  v15 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_2;
  v12[3] = &unk_27901A970;
  v12[4] = self;
  v13 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_4;
  v10[3] = &__block_descriptor_64_e106_v96__0__UIView_8_CGRect__CGPoint_dd__CGSize_dd__16_CGRect__CGPoint_dd__CGSize_dd__48q80___v__ddq___v____88l;
  v11 = a4;
  [(FCUIActivityListView *)self _setExpandedFrame:a5 initialFrame:0 representedActivity:v14 anchorActivityView:v12 collapsedSizeBlock:v10 preludeBlock:a6 activityViewAnimationBlock:a3.origin.x transitionCoordinator:a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

uint64_t __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_3;
  v3[3] = &unk_27901A790;
  v3[4] = *(a1 + 32);
  v1 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v1;
  return [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

uint64_t __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) _invalidateContentSize];
  [*(*(a1 + 32) + 2152) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v20 = a2;
  v21 = a4;
  v22 = MEMORY[0x277D75D18];
  v48 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v48.minimum;
  maximum = v48.maximum;
  preferred = v48.preferred;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_5;
  v34[3] = &unk_27901A998;
  v37 = a9;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a3;
  *&v48.maximum = *(a1 + 48);
  v42 = *(a1 + 32);
  v43 = *&v48.maximum;
  v35 = v20;
  v36 = v21;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v26 = v21;
  v27 = v20;
  *&v28 = minimum;
  *&v29 = maximum;
  *&v30 = preferred;
  [v22 _modifyAnimationsWithPreferredFrameRateRange:1703937 updateReason:v34 animations:{v28, v29, v30}];
}

void __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_5(uint64_t a1)
{
  v2 = 64;
  if (*(a1 + 80) > 0)
  {
    v2 = 104;
  }

  v3 = 72;
  if (*(a1 + 80) > 0)
  {
    v3 = 112;
  }

  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + v2), *(a1 + v3)}];
  v4 = MEMORY[0x277D75D18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_6;
  v14[3] = &unk_27901A470;
  v15 = *(a1 + 32);
  [v4 performWithoutAnimation:v14];
  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_7;
    v10[3] = &unk_27901A790;
    v6 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 120);
    v13 = *(a1 + 136);
    (*(v6 + 16))(v6, v5, v10, 0.045, 0.025);

    v5 = *(a1 + 80);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_9;
  v8[3] = &unk_27901A470;
  v7 = *(a1 + 40);
  v9 = *(a1 + 32);
  (*(v7 + 16))(v7, v5, v8, 0.115, 0.025);
}

void __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v13.minimum;
  maximum = v13.maximum;
  preferred = v13.preferred;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __110__FCUIActivityListView__setExpandedFrame_initialFrame_viaResizeWithRepresentedActivity_transitionCoordinator___block_invoke_8;
  v9[3] = &unk_27901A790;
  v10 = *(a1 + 32);
  v6 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v6;
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1703937 updateReason:v9 animations:{*&v6, v7, v8}];
}

- (CGRect)setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 representedActivity:(id)a5 presentationStyle:(int64_t)a6 transitionCoordinator:(id)a7
{
  if (a6 == 1)
  {
    [(FCUIActivityListView *)self _setExpandedFrame:a5 initialFrame:a7 viaScaleWithRepresentedActivity:a3.origin.x transitionCoordinator:a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  }

  else
  {
    [(FCUIActivityListView *)self _setExpandedFrame:a5 initialFrame:a7 viaResizeWithRepresentedActivity:a3.origin.x transitionCoordinator:a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)setContractedFrame:(CGRect)a3 representedActivity:(id)a4 presentationStyle:(int64_t)a5 transitionCoordinator:(id)a6
{
  if (a5 == 1)
  {
    [(FCUIActivityListView *)self _setContractedFrame:a4 viaScaleWithRepresentedActivity:a6 transitionCoordinator:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  else
  {
    [(FCUIActivityListView *)self _setContractedFrame:a4 viaResizeWithRepresentedActivity:a6 transitionCoordinator:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)setExpandedActivityView:(id)a3 withTransitionCoordinator:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = self;
  v8 = [(FCUIActivityListView *)self activityViews];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    v24 = *v28;
    do
    {
      v12 = 0;
      v13 = sel_gestureRecognizerForExclusionRelationships;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v27 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        v17 = v16;
        if (v16)
        {
          [v16 setExpanded:v16 == v6 withTransitionCoordinator:v7];
          if ([v17 isExpanded])
          {
            if (objc_opt_respondsToSelector())
            {
              [v17 gestureRecognizerForExclusionRelationships];
              v18 = v8;
              v19 = v7;
              v20 = v13;
              v22 = v21 = v6;
              v23 = [(FCUIActivityListView *)v25 panGestureRecognizer];
              [v22 requireGestureRecognizerToFail:v23];

              v6 = v21;
              v13 = v20;
              v7 = v19;
              v8 = v18;
              v11 = v24;
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__FCUIActivityListView_setExpandedActivityView_withTransitionCoordinator___block_invoke;
  v26[3] = &unk_27901A3F8;
  v26[4] = v25;
  [v7 animateAlongsideTransition:v26 completion:0];
}

uint64_t __74__FCUIActivityListView_setExpandedActivityView_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateContentSize];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)isolateActivityView:(id)a3 withInset:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(FCUIActivityListView *)self activityViews];
  v9 = v8;
  if (!self->_isolatedActivityView && [v8 containsObject:v7])
  {
    objc_storeStrong(&self->_isolatedActivityView, a3);
    [(FCUIActivityDisplaying *)self->_isolatedActivityView setContracted:1];
    [(FCUIActivityListView *)self setNeedsLayout];
    [(FCUIActivityListView *)self layoutIfNeeded];
    [(FCUIActivityListView *)self contentSize];
    v11 = v10;
    [(FCUIActivityDisplaying *)self->_isolatedActivityView frame];
    [(FCUIActivityListView *)self setContentOffset:0.0, bottom - (v11 - CGRectGetMaxY(v25) + -16.0)];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          if (v17 == self->_isolatedActivityView)
          {
            v18 = 1.0;
          }

          else
          {
            v18 = 0.0;
          }

          [(FCUIActivityDisplaying *)v17 setAlpha:v18, v19];
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (void)endIsolation
{
  v15 = *MEMORY[0x277D85DE8];
  isolatedActivityView = self->_isolatedActivityView;
  if (isolatedActivityView)
  {
    [(FCUIActivityDisplaying *)isolatedActivityView setExpanded:1];
    v4 = self->_isolatedActivityView;
    self->_isolatedActivityView = 0;

    [(FCUIActivityListView *)self setNeedsLayout];
    [(FCUIActivityListView *)self layoutIfNeeded];
    [(FCUIActivityListView *)self setContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(FCUIActivityListView *)self activityViews];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setAlpha:1.0];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(FCUIActivityListContentView *)self->_contentView sizeThatFits:a3.width, a3.height];
  if (width >= v4)
  {
    v4 = width;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(FCUIActivityListContentView *)self->_contentView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = FCUIActivityListView;
  [(FCUIActivityListView *)&v3 setNeedsLayout];
  [(FCUIActivityListContentView *)self->_contentView setNeedsLayout];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(FCUIActivityListView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = FCUIActivityListView;
  [(FCUIActivityListView *)&v16 setFrame:x, y, width, height];
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(FCUIActivityListView *)self _invalidateContentSize];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FCUIActivityListView;
  [(FCUIActivityListView *)&v3 layoutSubviews];
  if (!self->_contentSizeValid)
  {
    [(FCUIActivityListView *)self _recalculateContentSize];
  }
}

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FCUIActivityListView;
  if ([(FCUIActivityListView *)&v7 touchesShouldCancelInContentView:v4])
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 isMenuElement] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)adjustsFontForContentSizeCategory
{
  [(FCUIActivityListView *)self _configureContentViewIfNecessary];
  contentView = self->_contentView;

  return [(FCUIActivityListContentView *)contentView adjustsFontForContentSizeCategory];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  [(FCUIActivityListView *)self _configureContentViewIfNecessary];
  contentView = self->_contentView;

  [(FCUIActivityListContentView *)contentView setAdjustsFontForContentSizeCategory:v3];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(FCUIActivityListView *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    v3 = [(FCUIActivityListContentView *)self->_contentView adjustForContentSizeCategoryChange];
    if (v3)
    {
      [(FCUIActivityListContentView *)self->_contentView setNeedsLayout];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)_configureContentViewIfNecessary
{
  if (!self->_contentView)
  {
    v3 = [FCUIActivityListContentView alloc];
    [(FCUIActivityListView *)self bounds];
    v4 = [(FCUIActivityListContentView *)v3 initWithFrame:?];
    contentView = self->_contentView;
    self->_contentView = v4;

    [(FCUIActivityListContentView *)self->_contentView setFooterPinnedToBottom:self->_footerPinnedToBottom];
    v6 = self->_contentView;

    [(FCUIActivityListView *)self addSubview:v6];
  }
}

- (CGSize)_contentSizeForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(FCUIActivityListContentView *)self->_contentView sizeThatFits:a3.size.width, a3.size.height];
  v8 = v7;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = CGRectGetWidth(v12);
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)_contentViewFrameForContentSize:(CGSize)a3 inBounds:(CGRect)a4
{
  CGRectGetHeight(a4);

  BSRectWithSize();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_recalculateContentSize
{
  self->_contentSizeValid = 1;
  [(FCUIActivityListView *)self bounds];
  [(FCUIActivityListView *)self _contentSizeForBounds:?];
  v4 = v3;
  [FCUIActivityListView _contentViewFrameForContentSize:"_contentViewFrameForContentSize:inBounds:" inBounds:?];
  v6 = v5;
  v8 = v7;
  [(FCUIActivityListContentView *)self->_contentView setFrame:?];
  [(FCUIActivityListView *)self setContentSize:v6, v8];
  if (self->_footerPinnedToBottom)
  {
    v9 = MEMORY[0x277CBF348];
    v10 = *MEMORY[0x277CBF348];
    [(FCUIActivityListView *)self safeAreaInsets];
    v15 = v14 + 12.0;
    if (v11 == 0.0)
    {
      v11 = 12.0;
    }

    if (v8 >= v15 + v4 + v11)
    {
      v16 = *(v9 + 8);
      v11 = *MEMORY[0x277D768C8];
      v12 = *(MEMORY[0x277D768C8] + 8);
      v15 = *(MEMORY[0x277D768C8] + 16);
      v13 = *(MEMORY[0x277D768C8] + 24);
    }

    else
    {
      v16 = -v11;
    }

    [(FCUIActivityListView *)self setContentInset:v11, v12, v15, v13];
    v17 = v16 == self->_initialContentOffset.y && v10 == self->_initialContentOffset.x;
    if (!v17 && v4 > 0.0)
    {
      self->_initialContentOffset.x = v10;
      self->_initialContentOffset.y = v16;

      [(FCUIActivityListView *)self setContentOffset:v10, v16];
    }
  }
}

- (void)_invalidateContentSize
{
  self->_contentSizeValid = 0;
  [(FCUIActivityListView *)self invalidateIntrinsicContentSize];

  [(FCUIActivityListView *)self setNeedsLayout];
}

- (id)_activityViewForRepresentedActivity:(id)a3
{
  v4 = a3;
  v5 = [(FCUIActivityListContentView *)self->_contentView activityViews];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__FCUIActivityListView__activityViewForRepresentedActivity___block_invoke;
  v9[3] = &unk_27901A3D0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __60__FCUIActivityListView__activityViewForRepresentedActivity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activityIdentifier];
  v5 = [v3 activityIdentifier];

  v6 = BSEqualObjects();
  return v6;
}

- (id)_orderedSubviewsIncludingHeader:(BOOL)a3 andFooter:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(FCUIActivityListContentView *)self->_contentView activityViews];
  v8 = [v7 mutableCopy];

  if (v5)
  {
    v9 = [(FCUIActivityListContentView *)self->_contentView headerView];

    if (v9)
    {
      v10 = [(FCUIActivityListContentView *)self->_contentView headerView];
      [v8 insertObject:v10 atIndex:0];
    }
  }

  if (v4)
  {
    v11 = [(FCUIActivityListContentView *)self->_contentView footerView];

    if (v11)
    {
      v12 = [(FCUIActivityListContentView *)self->_contentView footerView];
      [v8 insertObject:v12 atIndex:0];
    }
  }

  return v8;
}

- (CGRect)_setContractedFrame:(CGRect)a3 viaScaleWithRepresentedActivity:(id)a4 transitionCoordinator:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v54 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = [(FCUIActivityListView *)self _activityViewForRepresentedActivity:a4];
  v13 = [v12 superview];
  [v12 frame];
  [v13 convertRect:0 toView:?];
  v39 = v15;
  v40 = v14;
  v37 = v17;
  v38 = v16;

  v44 = v12;
  [(FCUIActivityListContentView *)self->_contentView setCompactActivityView:v12];
  contentView = self->_contentView;
  [(FCUIActivityListView *)self bounds];
  [(FCUIActivityListContentView *)contentView sizeThatFitsCollapsedToPill:v19, v20];
  sx = v21;
  v43 = v22;
  [(FCUIActivityListContentView *)self->_contentView convertRect:0 fromView:x, y, width, height];
  memset(&v52, 0, sizeof(v52));
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  sxa = CGRectGetWidth(v55) / sx;
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v23 = CGRectGetHeight(v56);
  CGAffineTransformMakeScale(&v52, sxa, v23 / v43);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = [(FCUIActivityListView *)self _orderedSubviewsIncludingHeader:1 andFooter:1];
  v25 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v48 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        BSRectWithSize();
        [v31 willPresent:0 withTargetContainerBounds:v11 transitionCoordinator:?];
        [v29 frame];
        UIRectCenteredIntegralRectScale();
        [v29 setFrame:0];
        v47 = v52;
        [v29 setTransform:&v47];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __98__FCUIActivityListView__setContractedFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke;
        v46[3] = &unk_27901A3F8;
        v46[4] = v29;
        [v11 animateAlongsideTransition:0 completion:v46];
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v26);
  }

  [(FCUIActivityListContentView *)self->_contentView setContentDetached:1];
  [v11 transitionDuration];
  if (v32 <= 0.0)
  {
    [(FCUIActivityListContentView *)self->_contentView setContentDetached:0];
  }

  else
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __98__FCUIActivityListView__setContractedFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke_2;
    v45[3] = &unk_27901A3F8;
    v45[4] = self;
    [v11 animateAlongsideTransition:0 completion:v45];
  }

  v34 = v39;
  v33 = v40;
  v36 = v37;
  v35 = v38;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

uint64_t __98__FCUIActivityListView__setContractedFrame_viaScaleWithRepresentedActivity_transitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (CGRect)_setContractedFrame:(CGRect)a3 viaResizeWithRepresentedActivity:(id)a4 transitionCoordinator:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v40 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = [(FCUIActivityListView *)self _activityViewForRepresentedActivity:a4];
  v13 = [v12 superview];
  [v12 frame];
  [v13 convertRect:0 toView:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v34 = v12;
  [(FCUIActivityListContentView *)self->_contentView setCompactActivityView:v12];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [(FCUIActivityListContentView *)self->_contentView activityViews];
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      v26 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v35 + 1) + 8 * v26);
        if (objc_opt_respondsToSelector())
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        BSRectWithSize();
        [v29 willPresent:0 withTargetContainerBounds:v11 transitionCoordinator:?];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v24);
  }

  [(FCUIActivityListContentView *)self->_contentView setCollapsedSize:width, height];
  [(FCUIActivityListView *)self setFrame:x, y, width, height];
  [(FCUIActivityListView *)self _invalidateContentSize];
  [(FCUIActivityListContentView *)self->_contentView setNeedsLayout];
  [(FCUIActivityListView *)self layoutIfNeeded];

  v30 = v15;
  v31 = v17;
  v32 = v19;
  v33 = v21;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

@end