@interface SUUIStackedPopTransition
- (void)animateTransition:(id)transition;
@end

@implementation SUUIStackedPopTransition

- (void)animateTransition:(id)transition
{
  v119[1] = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  view = [v6 view];
  v92 = v5;
  view2 = [v5 view];
  containerView = [transitionCopy containerView];
  v87 = transitionCopy;
  v91 = v6;
  [transitionCopy finalFrameForViewController:v6];
  v11 = v10;
  v13 = v12;
  rect = v12;
  v85 = v15;
  v86 = v14;
  [(SUUIStackedBar *)self->_fromBar setHidden:1];
  [(SUUIStackedBar *)self->_fromBar bounds];
  [view2 convertRect:self->_fromBar fromView:?];
  v17 = v16;
  [(SUUIStackedBar *)self->_fromBar frame];
  v118 = 0;
  SUUIGetImagesFromView(view2, 0, &v118, v17 + v18);
  v19 = v118;
  [(SUUIStackedBar *)self->_fromBar setHidden:0];
  v20 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v19];
  v21 = objc_alloc(MEMORY[0x277D75D18]);
  [v19 size];
  v23 = v22;
  v90 = v19;
  [v19 size];
  v25 = [v21 initWithFrame:{0.0, 0.0, v23, v24}];
  v26 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  [v25 setBackgroundColor:v26];

  [v25 setAlpha:0.0];
  [containerView addSubview:v20];
  [containerView addSubview:v25];
  [v20 frame];
  v28 = v27;
  v30 = v29;
  [(SUUIStackedBar *)self->_fromBar frame];
  v32 = v13 + v31;
  [(SUUIStackedBar *)self->_fromBar bounds];
  v97 = view2;
  [view2 convertRect:self->_fromBar fromView:?];
  v34 = v32 + v33;
  v96 = v20;
  [v20 setFrame:{v11, v32 + v33, v28, v30}];
  [v25 setFrame:{v11, v34, v28, v30}];
  split = self->_split;
  [(SUUIStackedBar *)self->_toBar setHidden:1];
  v35 = self->_split;
  v116 = 0;
  v117 = 0;
  v89 = view;
  SUUIGetImagesFromView(view, &v117, &v116, v35);
  v36 = v117;
  v37 = v116;
  [(SUUIStackedBar *)self->_toBar setHidden:0];
  v38 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v36];
  [v38 frame];
  v40 = v39;
  v42 = v41;
  v43 = v34 - self->_split;
  [v38 setFrame:{v11, v43}];
  v95 = v38;
  [containerView addSubview:v38];
  v83 = v37;
  v44 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v37];
  [v44 frame];
  v46 = v45;
  v48 = v47;
  v120.origin.x = v11;
  v120.origin.y = rect;
  v120.size.width = v40;
  v120.size.height = v42;
  MaxY = CGRectGetMaxY(v120);
  [v44 setFrame:{v11, MaxY + v48, v46, v48}];
  v49 = v44;
  [containerView addSubview:v44];
  v50 = objc_alloc_init(SUUIStackedBar);
  [(SUUIStackedBar *)v50 setSplitViewStyle:[(SUUIStackedBar *)self->_fromBar splitViewStyle]];
  [(SUUIStackedBar *)v50 setHidesStatusBar:1];
  items = [(SUUIStackedBar *)self->_fromBar items];
  -[SUUIStackedBar setAlwaysShowsBackButton:](v50, "setAlwaysShowsBackButton:", [items count] > 1);

  items2 = [(SUUIStackedBar *)self->_fromBar items];
  lastObject = [items2 lastObject];
  v119[0] = lastObject;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:1];
  v55 = SUUINavigationItemsShallowCopy(v54);
  [(SUUIStackedBar *)v50 setItems:v55];

  [(SUUIStackedBar *)v50 sizeToFit];
  [containerView addSubview:v50];
  [(SUUIStackedBar *)v50 frame];
  v57 = v56;
  [(SUUIStackedBar *)v50 setFrame:v11, v34 - v56, v28];
  v84 = v36;
  v58 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v36];
  [v58 setFrame:{v11, v43, v40, v42}];
  [v58 setAlpha:0.0];
  [containerView addSubview:v58];
  v59 = objc_alloc_init(SUUIStackedBar);
  [(SUUIStackedBar *)v59 setSplitViewStyle:[(SUUIStackedBar *)self->_toBar splitViewStyle]];
  items3 = [(SUUIStackedBar *)self->_toBar items];
  v61 = SUUINavigationItemsShallowCopy(items3);
  [(SUUIStackedBar *)v59 setItems:v61];

  [(SUUIStackedBar *)v59 setLastItemExpanded:0];
  if ([(SUUIStackedBar *)self->_toBar splitViewStyle])
  {
    [(SUUIStackedBar *)v59 setZeroHeightWhenFirstChildExpanded:1];
  }

  [(SUUIStackedBar *)v59 frame];
  [(SUUIStackedBar *)v59 sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
  [(SUUIStackedBar *)self->_fromBar frame];
  [(SUUIStackedBar *)v59 setFrame:v11];
  [containerView addSubview:v59];
  [v97 removeFromSuperview];
  [(SUUIStackedBar *)v59 setLastItemExpanded:1 animated:1];
  v62 = SUUIStackedBarSpringAnimationForExpandCollapse(v50, v11, rect + split - v57 + -1.0);
  v63 = SUUIStackedBarSpringAnimationForExpandCollapse(v96, v11, rect + split);
  v64 = SUUIStackedBarSpringAnimationForExpandCollapse(v25, v11, rect + split);
  v65 = SUUIStackedBarSpringAnimationForExpandCollapse(v95, v11, rect);
  v66 = SUUIStackedBarSpringAnimationForExpandCollapse(v58, v11, rect);
  v67 = SUUIStackedBarSpringAnimationForExpandCollapse(v49, v11, MaxY);
  v68 = MEMORY[0x277D75D18];
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __46__SUUIStackedPopTransition_animateTransition___block_invoke;
  v113[3] = &unk_2798F5AF8;
  v69 = v58;
  v114 = v69;
  v70 = v25;
  v115 = v70;
  [v68 animateWithDuration:v113 animations:0.2];
  [(SUUIStackedPopTransition *)self transitionDuration:v87];
  when = dispatch_time(0, (v71 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUUIStackedPopTransition_animateTransition___block_invoke_2;
  block[3] = &unk_2798F6A58;
  v109 = v11;
  v110 = rect;
  v111 = v86;
  v112 = v85;
  v99 = v89;
  v100 = containerView;
  v101 = v59;
  v102 = v50;
  v103 = v96;
  v104 = v95;
  v105 = v69;
  v106 = v70;
  v107 = v49;
  v108 = v87;
  recta = v87;
  v72 = v49;
  v88 = v70;
  v73 = v69;
  v74 = v95;
  v75 = v96;
  v76 = v50;
  v77 = v59;
  v78 = containerView;
  v79 = v89;
  dispatch_after(when, MEMORY[0x277D85CD0], block);
}

uint64_t __46__SUUIStackedPopTransition_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __46__SUUIStackedPopTransition_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
  [*(a1 + 40) addSubview:*(a1 + 32)];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
  [*(a1 + 64) removeFromSuperview];
  [*(a1 + 72) removeFromSuperview];
  [*(a1 + 80) removeFromSuperview];
  [*(a1 + 88) removeFromSuperview];
  [*(a1 + 96) removeFromSuperview];
  v2 = *(a1 + 104);

  return [v2 completeTransition:1];
}

@end