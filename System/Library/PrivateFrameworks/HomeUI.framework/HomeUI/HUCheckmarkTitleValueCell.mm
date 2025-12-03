@interface HUCheckmarkTitleValueCell
- (HUCheckmarkTitleValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateCheckmark;
- (void)setChecked:(BOOL)checked;
@end

@implementation HUCheckmarkTitleValueCell

- (HUCheckmarkTitleValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HUCheckmarkTitleValueCell;
  v4 = [(HUTitleValueCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_checked = 0;
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    checkmarkImageView = v5->_checkmarkImageView;
    v5->_checkmarkImageView = v6;

    [(HUCheckmarkTitleValueCell *)v5 _updateCheckmark];
    labelsStackView = [(HUTitleValueCell *)v5 labelsStackView];
    [labelsStackView insertArrangedSubview:v5->_checkmarkImageView atIndex:0];
  }

  return v5;
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    self->_checked = checked;
    [(HUCheckmarkTitleValueCell *)self _updateCheckmark];
  }
}

- (void)_updateCheckmark
{
  checkmarkImageView = [(HUCheckmarkTitleValueCell *)self checkmarkImageView];
  [(UITableViewCell *)self hu_configureCheckmarkForImageView:checkmarkImageView checked:[(HUCheckmarkTitleValueCell *)self isChecked]];
}

@end