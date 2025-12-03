@interface DBIconListView
+ (unint64_t)iconColumnsForScreenWidth:(double)width iconImageSize:(CGSize)size statusBarEdge:(unint64_t)edge;
+ (unint64_t)iconRowsForScreenHeight:(double)height iconImageSize:(CGSize)size statusBarEdge:(unint64_t)edge interactionAffordances:(unint64_t)affordances;
- (CGSize)alignmentIconSize;
- (UIEdgeInsets)insets;
- (void)layoutSubviews;
@end

@implementation DBIconListView

+ (unint64_t)iconRowsForScreenHeight:(double)height iconImageSize:(CGSize)size statusBarEdge:(unint64_t)edge interactionAffordances:(unint64_t)affordances
{
  height = size.height;
  width = size.width;
  [DBFolderView maximumPageControlHeightForInteractionAffordances:affordances];
  v11 = height - v10;
  if ((edge | 2) == 3)
  {
    v11 = v11 - 45.0;
  }

  [DBIconView maximumIconViewHeightForIconImageSize:width, height];
  if (v11 <= v12)
  {
    return 2;
  }

  v13 = vcvtmd_s64_f64((v11 + -20.0) / v12);
  do
  {
    v14 = v13 - 1;
    if (v13 <= 2)
    {
      break;
    }

    v15 = (v11 + -20.0 - v12 * v13) / v13;
    --v13;
  }

  while (v15 < 20.0);
  v16 = v14 + 1;
  if (v14 + 1 <= 4)
  {
    v17 = v14 + 1;
  }

  else
  {
    v17 = 4;
  }

  if (v16 >= 2)
  {
    return v17;
  }

  else
  {
    return 2;
  }
}

+ (unint64_t)iconColumnsForScreenWidth:(double)width iconImageSize:(CGSize)size statusBarEdge:(unint64_t)edge
{
  widthCopy = width;
  if ((edge | 2) != 3)
  {
    widthCopy = width - 45.0;
  }

  [DBIconView maxLabelSizeForIconImageSize:size.width, size.height];
  v7 = v6;
  +[DBIconView minimumInterIconSpacing];
  if (widthCopy <= 480.0)
  {
    return 4;
  }

  v10 = vcvtmd_s64_f64(widthCopy / (v9 + v7 + v8));
  v11 = 5;
  if (v10 <= 5)
  {
    v11 = v10;
  }

  if (v10 >= 4)
  {
    return v11;
  }

  else
  {
    return 4;
  }
}

- (CGSize)alignmentIconSize
{
  v8.receiver = self;
  v8.super_class = DBIconListView;
  [(SBIconListView *)&v8 alignmentIconSize];
  v4 = v3;
  [(SBIconListView *)self iconContentScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  [DBIconView maximumIconViewHeightForIconImageSize:?];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = DBIconListView;
  [(SBIconListView *)&v18 layoutSubviews];
  [(DBIconListView *)self _setSpeedBumpEdges:10];
  v3 = objc_alloc_init(MEMORY[0x277D754F8]);
  [(DBIconListView *)self addLayoutGuide:v3];
  v13 = MEMORY[0x277CCAAD0];
  topAnchor = [v3 topAnchor];
  topAnchor2 = [(DBIconListView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[0] = v15;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [(DBIconListView *)self bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[1] = v5;
  leftAnchor = [v3 leftAnchor];
  leftAnchor2 = [(DBIconListView *)self leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v19[2] = v8;
  rightAnchor = [v3 rightAnchor];
  rightAnchor2 = [(DBIconListView *)self rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v19[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  [v13 activateConstraints:v12];
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end