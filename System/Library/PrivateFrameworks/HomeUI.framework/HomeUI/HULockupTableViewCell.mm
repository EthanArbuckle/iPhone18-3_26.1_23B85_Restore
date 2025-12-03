@interface HULockupTableViewCell
- (HFItem)item;
- (HULockupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUResizableCellDelegate)resizingDelegate;
- (void)didUpdateRequiredHeightForLockupView:(id)view;
- (void)setItem:(id)item;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HULockupTableViewCell

- (HULockupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v33.receiver = self;
  v33.super_class = HULockupTableViewCell;
  v4 = [(HULockupTableViewCell *)&v33 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v6 = objc_alloc([(HULockupTableViewCell *)v4 lockupViewClass]);
    contentView = [(HULockupTableViewCell *)v5 contentView];
    [contentView bounds];
    v8 = [v6 initWithFrame:?];
    lockupView = v5->_lockupView;
    v5->_lockupView = v8;

    [(HULockupView *)v5->_lockupView setInternalViewResizingDelegate:v5];
    [(HULockupView *)v5->_lockupView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(HULockupTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_lockupView];

    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(HULockupView *)v5->_lockupView leadingAnchor];
    contentView3 = [(HULockupTableViewCell *)v5 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v16];

    trailingAnchor = [(HULockupView *)v5->_lockupView trailingAnchor];
    contentView4 = [(HULockupTableViewCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v21];

    topAnchor = [(HULockupView *)v5->_lockupView topAnchor];
    contentView5 = [(HULockupTableViewCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v26];

    bottomAnchor = [(HULockupView *)v5->_lockupView bottomAnchor];
    contentView6 = [(HULockupTableViewCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v31];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v5;
}

- (HFItem)item
{
  lockupView = [(HULockupTableViewCell *)self lockupView];
  item = [lockupView item];

  return item;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  lockupView = [(HULockupTableViewCell *)self lockupView];
  [lockupView setItem:itemCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  lockupView = [(HULockupTableViewCell *)self lockupView];
  [lockupView updateUIWithAnimation:animationCopy];
}

- (void)didUpdateRequiredHeightForLockupView:(id)view
{
  resizingDelegate = [(HULockupTableViewCell *)self resizingDelegate];
  [resizingDelegate didUpdateRequiredHeightForCell:self];
}

- (HUResizableCellDelegate)resizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resizingDelegate);

  return WeakRetained;
}

@end