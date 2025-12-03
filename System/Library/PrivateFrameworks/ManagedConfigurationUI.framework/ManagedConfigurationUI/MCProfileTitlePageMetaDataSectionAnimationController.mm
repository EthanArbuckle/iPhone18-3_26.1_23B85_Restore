@interface MCProfileTitlePageMetaDataSectionAnimationController
- (BOOL)_putBackViewIfNeeded:(id)needed toView:(id)view;
- (BOOL)_relocateViewIfNeeded:(id)needed fromView:(id)view toView:(id)toView;
- (CGRect)iconViewOriginFrame;
- (CGRect)titleLabelOriginFrame;
- (MCProfileTitlePageMetaDataSectionController)sectionController;
- (UITableView)tableView;
- (UIView)iconView;
- (UIView)orgView;
- (UIView)subtitleView;
- (UIView)titleView;
- (UIView)topBar;
- (double)_alphaWithProgress:(double)progress keys:(id)keys values:(id)values;
- (unint64_t)_binarySearch:(id)search target:(double)target;
- (void)_animateView:(id)view progress:(double)progress startFrame:(CGRect)frame endY:(double)y endScale:(double)scale extraYOffset:(double)offset;
- (void)startTrackingWithMetaDataSectionController:(id)controller topBar:(id)bar;
@end

@implementation MCProfileTitlePageMetaDataSectionAnimationController

- (void)startTrackingWithMetaDataSectionController:(id)controller topBar:(id)bar
{
  barCopy = bar;
  controllerCopy = controller;
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setSectionController:controllerCopy];
  titleCell = [controllerCopy titleCell];
  titleLabel = [titleCell titleLabel];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTitleView:titleLabel];

  subtitleCell = [controllerCopy subtitleCell];
  titleLabel2 = [subtitleCell titleLabel];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setSubtitleView:titleLabel2];

  iconCell = [controllerCopy iconCell];
  iconImageView = [iconCell iconImageView];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setIconView:iconImageView];

  orgCell = [controllerCopy orgCell];
  contentView = [orgCell contentView];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setOrgView:contentView];

  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTopBar:barCopy];
  tableView = [controllerCopy tableView];

  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTableView:tableView];
}

void __124__MCProfileTitlePageMetaDataSectionAnimationController_updateProgressWithTranslationDistance_referenceDistance_isScrolling___block_invoke()
{
  v0 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaKeyArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaKeyArray = &unk_28694CAA0;

  v1 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaValueArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaValueArray = &unk_28694CAB8;

  v2 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaKeyArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaKeyArray = &unk_28694CAD0;

  v3 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaValueArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaValueArray = &unk_28694CAE8;

  v4 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaKeyArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaKeyArray = &unk_28694CB00;

  v5 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaValueArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaValueArray = &unk_28694CB18;

  v6 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaKeyArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaKeyArray = &unk_28694CB30;

  v7 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaValueArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaValueArray = &unk_28694CB48;
}

- (BOOL)_putBackViewIfNeeded:(id)needed toView:(id)view
{
  neededCopy = needed;
  viewCopy = view;
  superview = [neededCopy superview];

  if (superview != viewCopy)
  {
    [neededCopy removeFromSuperview];
    [viewCopy addSubview:neededCopy];
  }

  return superview != viewCopy;
}

- (BOOL)_relocateViewIfNeeded:(id)needed fromView:(id)view toView:(id)toView
{
  neededCopy = needed;
  viewCopy = view;
  toViewCopy = toView;
  superview = [neededCopy superview];

  if (superview == viewCopy)
  {
    [neededCopy frame];
    [viewCopy convertRect:toViewCopy toView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [neededCopy removeFromSuperview];
    [toViewCopy addSubview:neededCopy];
    [neededCopy setFrame:{v12, v14, v16, v18}];
  }

  return superview == viewCopy;
}

- (void)_animateView:(id)view progress:(double)progress startFrame:(CGRect)frame endY:(double)y endScale:(double)scale extraYOffset:(double)offset
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v17 = (CGRectGetMidY(v20) - y) * progress;
  CGAffineTransformMakeScale(&v19, 1.0 - (1.0 - scale) * progress, 1.0 - (1.0 - scale) * progress);
  v18 = v19;
  [viewCopy setTransform:&v18];
  [viewCopy setFrame:{x, y - (v17 + offset), width, height}];
}

- (double)_alphaWithProgress:(double)progress keys:(id)keys values:(id)values
{
  keysCopy = keys;
  valuesCopy = values;
  if ([keysCopy count] == 2)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self _binarySearch:keysCopy target:progress];
    if (v10 == [keysCopy count] - 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }
  }

  v12 = [keysCopy objectAtIndexedSubscript:v10];
  [v12 floatValue];
  v14 = v13;

  v15 = [keysCopy objectAtIndexedSubscript:v11];
  [v15 floatValue];
  v17 = v16;

  v18 = [valuesCopy objectAtIndexedSubscript:v10];
  [v18 floatValue];
  v20 = v19;
  v21 = v19;

  v22 = [valuesCopy objectAtIndexedSubscript:v11];

  [v22 floatValue];
  v24 = v23;

  if (v20 != v24)
  {
    v21 = v21 + (v24 - v21) * ((progress - v14) / (v17 - v14));
  }

  return v21;
}

- (unint64_t)_binarySearch:(id)search target:(double)target
{
  searchCopy = search;
  v6 = [searchCopy count] - 1;
  if (v6 < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [searchCopy objectAtIndexedSubscript:v7 + ((v6 - v7) >> 1)];
      [v8 floatValue];
      v10 = v9;

      if (v10 <= target)
      {
        v7 += (v6 - v7) >> 1;
      }

      else
      {
        v6 = v7 + ((v6 - v7) >> 1);
      }
    }

    while (v7 + 1 < v6);
  }

  v11 = [searchCopy objectAtIndexedSubscript:v6];
  [v11 floatValue];
  v13 = v12;

  if (v13 > target)
  {
    v6 = v7;
  }

  return v6;
}

- (MCProfileTitlePageMetaDataSectionController)sectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionController);

  return WeakRetained;
}

- (UIView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (UIView)titleView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleView);

  return WeakRetained;
}

- (UIView)subtitleView
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleView);

  return WeakRetained;
}

- (UIView)orgView
{
  WeakRetained = objc_loadWeakRetained(&self->_orgView);

  return WeakRetained;
}

- (UIView)topBar
{
  WeakRetained = objc_loadWeakRetained(&self->_topBar);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (CGRect)iconViewOriginFrame
{
  x = self->_iconViewOriginFrame.origin.x;
  y = self->_iconViewOriginFrame.origin.y;
  width = self->_iconViewOriginFrame.size.width;
  height = self->_iconViewOriginFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)titleLabelOriginFrame
{
  x = self->_titleLabelOriginFrame.origin.x;
  y = self->_titleLabelOriginFrame.origin.y;
  width = self->_titleLabelOriginFrame.size.width;
  height = self->_titleLabelOriginFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end