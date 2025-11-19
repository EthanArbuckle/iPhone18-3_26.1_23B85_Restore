@interface HUCheckmarkTitleValueCell
- (HUCheckmarkTitleValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateCheckmark;
- (void)setChecked:(BOOL)a3;
@end

@implementation HUCheckmarkTitleValueCell

- (HUCheckmarkTitleValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = HUCheckmarkTitleValueCell;
  v4 = [(HUTitleValueCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_checked = 0;
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    checkmarkImageView = v5->_checkmarkImageView;
    v5->_checkmarkImageView = v6;

    [(HUCheckmarkTitleValueCell *)v5 _updateCheckmark];
    v8 = [(HUTitleValueCell *)v5 labelsStackView];
    [v8 insertArrangedSubview:v5->_checkmarkImageView atIndex:0];
  }

  return v5;
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    self->_checked = a3;
    [(HUCheckmarkTitleValueCell *)self _updateCheckmark];
  }
}

- (void)_updateCheckmark
{
  v3 = [(HUCheckmarkTitleValueCell *)self checkmarkImageView];
  [(UITableViewCell *)self hu_configureCheckmarkForImageView:v3 checked:[(HUCheckmarkTitleValueCell *)self isChecked]];
}

@end