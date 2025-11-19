@interface MCProfileTitlePageMetaDataSectionAnimationController
- (BOOL)_putBackViewIfNeeded:(id)a3 toView:(id)a4;
- (BOOL)_relocateViewIfNeeded:(id)a3 fromView:(id)a4 toView:(id)a5;
- (CGRect)iconViewOriginFrame;
- (CGRect)titleLabelOriginFrame;
- (MCProfileTitlePageMetaDataSectionController)sectionController;
- (UITableView)tableView;
- (UIView)iconView;
- (UIView)orgView;
- (UIView)subtitleView;
- (UIView)titleView;
- (UIView)topBar;
- (double)_alphaWithProgress:(double)a3 keys:(id)a4 values:(id)a5;
- (unint64_t)_binarySearch:(id)a3 target:(double)a4;
- (void)_animateView:(id)a3 progress:(double)a4 startFrame:(CGRect)a5 endY:(double)a6 endScale:(double)a7 extraYOffset:(double)a8;
- (void)startTrackingWithMetaDataSectionController:(id)a3 topBar:(id)a4;
@end

@implementation MCProfileTitlePageMetaDataSectionAnimationController

- (void)startTrackingWithMetaDataSectionController:(id)a3 topBar:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setSectionController:v7];
  v8 = [v7 titleCell];
  v9 = [v8 titleLabel];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTitleView:v9];

  v10 = [v7 subtitleCell];
  v11 = [v10 titleLabel];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setSubtitleView:v11];

  v12 = [v7 iconCell];
  v13 = [v12 iconImageView];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setIconView:v13];

  v14 = [v7 orgCell];
  v15 = [v14 contentView];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setOrgView:v15];

  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTopBar:v6];
  v16 = [v7 tableView];

  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTableView:v16];
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

- (BOOL)_putBackViewIfNeeded:(id)a3 toView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 superview];

  if (v7 != v6)
  {
    [v5 removeFromSuperview];
    [v6 addSubview:v5];
  }

  return v7 != v6;
}

- (BOOL)_relocateViewIfNeeded:(id)a3 fromView:(id)a4 toView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 superview];

  if (v10 == v8)
  {
    [v7 frame];
    [v8 convertRect:v9 toView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v7 removeFromSuperview];
    [v9 addSubview:v7];
    [v7 setFrame:{v12, v14, v16, v18}];
  }

  return v10 == v8;
}

- (void)_animateView:(id)a3 progress:(double)a4 startFrame:(CGRect)a5 endY:(double)a6 endScale:(double)a7 extraYOffset:(double)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a3;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v17 = (CGRectGetMidY(v20) - a6) * a4;
  CGAffineTransformMakeScale(&v19, 1.0 - (1.0 - a7) * a4, 1.0 - (1.0 - a7) * a4);
  v18 = v19;
  [v16 setTransform:&v18];
  [v16 setFrame:{x, y - (v17 + a8), width, height}];
}

- (double)_alphaWithProgress:(double)a3 keys:(id)a4 values:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 count] == 2)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self _binarySearch:v8 target:a3];
    if (v10 == [v8 count] - 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }
  }

  v12 = [v8 objectAtIndexedSubscript:v10];
  [v12 floatValue];
  v14 = v13;

  v15 = [v8 objectAtIndexedSubscript:v11];
  [v15 floatValue];
  v17 = v16;

  v18 = [v9 objectAtIndexedSubscript:v10];
  [v18 floatValue];
  v20 = v19;
  v21 = v19;

  v22 = [v9 objectAtIndexedSubscript:v11];

  [v22 floatValue];
  v24 = v23;

  if (v20 != v24)
  {
    v21 = v21 + (v24 - v21) * ((a3 - v14) / (v17 - v14));
  }

  return v21;
}

- (unint64_t)_binarySearch:(id)a3 target:(double)a4
{
  v5 = a3;
  v6 = [v5 count] - 1;
  if (v6 < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7 + ((v6 - v7) >> 1)];
      [v8 floatValue];
      v10 = v9;

      if (v10 <= a4)
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

  v11 = [v5 objectAtIndexedSubscript:v6];
  [v11 floatValue];
  v13 = v12;

  if (v13 > a4)
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