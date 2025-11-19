@interface HULockupTableViewCell
- (HFItem)item;
- (HULockupTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUResizableCellDelegate)resizingDelegate;
- (void)didUpdateRequiredHeightForLockupView:(id)a3;
- (void)setItem:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HULockupTableViewCell

- (HULockupTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v33.receiver = self;
  v33.super_class = HULockupTableViewCell;
  v4 = [(HULockupTableViewCell *)&v33 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = objc_alloc([(HULockupTableViewCell *)v4 lockupViewClass]);
    v7 = [(HULockupTableViewCell *)v5 contentView];
    [v7 bounds];
    v8 = [v6 initWithFrame:?];
    lockupView = v5->_lockupView;
    v5->_lockupView = v8;

    [(HULockupView *)v5->_lockupView setInternalViewResizingDelegate:v5];
    [(HULockupView *)v5->_lockupView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(HULockupTableViewCell *)v5 contentView];
    [v10 addSubview:v5->_lockupView];

    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [(HULockupView *)v5->_lockupView leadingAnchor];
    v13 = [(HULockupTableViewCell *)v5 contentView];
    v14 = [v13 layoutMarginsGuide];
    v15 = [v14 leadingAnchor];
    v16 = [v12 constraintEqualToAnchor:v15];
    [v11 addObject:v16];

    v17 = [(HULockupView *)v5->_lockupView trailingAnchor];
    v18 = [(HULockupTableViewCell *)v5 contentView];
    v19 = [v18 layoutMarginsGuide];
    v20 = [v19 trailingAnchor];
    v21 = [v17 constraintEqualToAnchor:v20];
    [v11 addObject:v21];

    v22 = [(HULockupView *)v5->_lockupView topAnchor];
    v23 = [(HULockupTableViewCell *)v5 contentView];
    v24 = [v23 layoutMarginsGuide];
    v25 = [v24 topAnchor];
    v26 = [v22 constraintEqualToAnchor:v25];
    [v11 addObject:v26];

    v27 = [(HULockupView *)v5->_lockupView bottomAnchor];
    v28 = [(HULockupTableViewCell *)v5 contentView];
    v29 = [v28 layoutMarginsGuide];
    v30 = [v29 bottomAnchor];
    v31 = [v27 constraintEqualToAnchor:v30];
    [v11 addObject:v31];

    [MEMORY[0x277CCAAD0] activateConstraints:v11];
  }

  return v5;
}

- (HFItem)item
{
  v2 = [(HULockupTableViewCell *)self lockupView];
  v3 = [v2 item];

  return v3;
}

- (void)setItem:(id)a3
{
  v4 = a3;
  v5 = [(HULockupTableViewCell *)self lockupView];
  [v5 setItem:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HULockupTableViewCell *)self lockupView];
  [v4 updateUIWithAnimation:v3];
}

- (void)didUpdateRequiredHeightForLockupView:(id)a3
{
  v4 = [(HULockupTableViewCell *)self resizingDelegate];
  [v4 didUpdateRequiredHeightForCell:self];
}

- (HUResizableCellDelegate)resizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resizingDelegate);

  return WeakRetained;
}

@end