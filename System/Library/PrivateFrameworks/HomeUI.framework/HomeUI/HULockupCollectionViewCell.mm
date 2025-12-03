@interface HULockupCollectionViewCell
- (BOOL)bottomSeparatorVisible;
- (BOOL)topSeparatorVisible;
- (HFItem)item;
- (HULockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (HUResizableCellDelegate)resizingDelegate;
- (void)didUpdateRequiredHeightForLockupView:(id)view;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomSeparatorVisible:(BOOL)visible;
- (void)setItem:(id)item;
- (void)setTopSeparatorVisible:(BOOL)visible;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HULockupCollectionViewCell

- (HULockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  v53 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = HULockupCollectionViewCell;
  v3 = [(HULockupCollectionViewCell *)&v50 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HULockupCollectionViewCell *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = objc_alloc([(HULockupCollectionViewCell *)v3 lockupViewClass]);
    contentView = [(HULockupCollectionViewCell *)v3 contentView];
    [contentView bounds];
    v7 = [v5 initWithFrame:?];
    lockupView = v3->_lockupView;
    v3->_lockupView = v7;

    [(HULockupView *)v3->_lockupView setInternalViewResizingDelegate:v3];
    [(HULockupView *)v3->_lockupView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(HULockupCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_lockupView];

    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(HULockupView *)v3->_lockupView leadingAnchor];
    contentView3 = [(HULockupCollectionViewCell *)v3 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    contentView4 = [(HULockupCollectionViewCell *)v3 contentView];
    [contentView4 directionalLayoutMargins];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v16];
    [array addObject:v17];

    trailingAnchor = [(HULockupView *)v3->_lockupView trailingAnchor];
    contentView5 = [(HULockupCollectionViewCell *)v3 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v22];

    topAnchor = [(HULockupView *)v3->_lockupView topAnchor];
    contentView6 = [(HULockupCollectionViewCell *)v3 contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v27];

    bottomAnchor = [(HULockupView *)v3->_lockupView bottomAnchor];
    contentView7 = [(HULockupCollectionViewCell *)v3 contentView];
    layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v32];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    v33 = objc_alloc_init(MEMORY[0x277D75D18]);
    topSeparatorView = v3->_topSeparatorView;
    v3->_topSeparatorView = v33;

    v35 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomSeparatorView = v3->_bottomSeparatorView;
    v3->_bottomSeparatorView = v35;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v51[0] = v3->_topSeparatorView;
    v51[1] = v3->_bottomSeparatorView;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:{2, 0}];
    v38 = [v37 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v47;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v47 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v46 + 1) + 8 * i);
          [v42 setHidden:1];
          tableSeparatorDarkColor = [MEMORY[0x277D75348] tableSeparatorDarkColor];
          [v42 setBackgroundColor:tableSeparatorDarkColor];

          contentView8 = [(HULockupCollectionViewCell *)v3 contentView];
          [contentView8 addSubview:v42];
        }

        v39 = [v37 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v39);
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HULockupCollectionViewCell;
  [(HULockupCollectionViewCell *)&v14 layoutSubviews];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = 1.0 / v4;

  contentView = [(HULockupCollectionViewCell *)self contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v15);
  topSeparatorView = [(HULockupCollectionViewCell *)self topSeparatorView];
  [topSeparatorView setFrame:{0.0, 0.0, Width, v5}];

  contentView2 = [(HULockupCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v10 = CGRectGetMaxY(v16) - v5;
  contentView3 = [(HULockupCollectionViewCell *)self contentView];
  [contentView3 bounds];
  v12 = CGRectGetWidth(v17);
  bottomSeparatorView = [(HULockupCollectionViewCell *)self bottomSeparatorView];
  [bottomSeparatorView setFrame:{0.0, v10, v12, v5}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HULockupCollectionViewCell;
  [(HULockupCollectionViewCell *)&v3 prepareForReuse];
  [(HULockupCollectionViewCell *)self setTopSeparatorVisible:0];
  [(HULockupCollectionViewCell *)self setBottomSeparatorVisible:0];
}

- (HFItem)item
{
  lockupView = [(HULockupCollectionViewCell *)self lockupView];
  item = [lockupView item];

  return item;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  lockupView = [(HULockupCollectionViewCell *)self lockupView];
  [lockupView setItem:itemCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  lockupView = [(HULockupCollectionViewCell *)self lockupView];
  [lockupView updateUIWithAnimation:animationCopy];
}

- (BOOL)topSeparatorVisible
{
  topSeparatorView = [(HULockupCollectionViewCell *)self topSeparatorView];
  isHidden = [topSeparatorView isHidden];

  return isHidden ^ 1;
}

- (void)setTopSeparatorVisible:(BOOL)visible
{
  visibleCopy = visible;
  topSeparatorView = [(HULockupCollectionViewCell *)self topSeparatorView];
  [topSeparatorView setHidden:!visibleCopy];
}

- (BOOL)bottomSeparatorVisible
{
  bottomSeparatorView = [(HULockupCollectionViewCell *)self bottomSeparatorView];
  isHidden = [bottomSeparatorView isHidden];

  return isHidden ^ 1;
}

- (void)setBottomSeparatorVisible:(BOOL)visible
{
  visibleCopy = visible;
  bottomSeparatorView = [(HULockupCollectionViewCell *)self bottomSeparatorView];
  [bottomSeparatorView setHidden:!visibleCopy];
}

- (void)didUpdateRequiredHeightForLockupView:(id)view
{
  resizingDelegate = [(HULockupCollectionViewCell *)self resizingDelegate];
  [resizingDelegate didUpdateRequiredHeightForCell:self];
}

- (HUResizableCellDelegate)resizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resizingDelegate);

  return WeakRetained;
}

@end