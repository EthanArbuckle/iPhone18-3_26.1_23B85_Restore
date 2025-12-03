@interface HUInlineDatePickerCell
- (HUInlineDatePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUInlineDatePickerCellDelegate)delegate;
- (NSDateComponents)timeComponents;
- (void)_valueChanged:(id)changed;
- (void)setDisabled:(BOOL)disabled;
- (void)setHideTitleLabel:(BOOL)label;
- (void)setTimeComponents:(id)components;
- (void)setTitle:(id)title;
- (void)updateConstraints;
@end

@implementation HUInlineDatePickerCell

- (HUInlineDatePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = HUInlineDatePickerCell;
  v4 = [(HUInlineDatePickerCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(HUInlineDatePickerCell *)v4 textLabel];
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    [(HUInlineDatePickerCell *)v5 setSelectionStyle:0];
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUInlineDatePickerCell *)v5 setSelectedBackgroundView:v8];

    v9 = objc_alloc_init(MEMORY[0x277D753E8]);
    datePicker = v5->_datePicker;
    v5->_datePicker = v9;

    [(UIDatePicker *)v5->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v5->_datePicker setDatePickerMode:0];
    [(UIDatePicker *)v5->_datePicker setPreferredDatePickerStyle:3];
    [(UIDatePicker *)v5->_datePicker addTarget:v5 action:sel__valueChanged_ forControlEvents:4096];
    contentView = [(HUInlineDatePickerCell *)v5 contentView];
    datePicker = [(HUInlineDatePickerCell *)v5 datePicker];
    [contentView addSubview:datePicker];
  }

  return v5;
}

- (void)updateConstraints
{
  allConstraints = [(HUInlineDatePickerCell *)self allConstraints];

  if (!allConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([(HUInlineDatePickerCell *)self hideTitleLabel])
    {
      datePicker = [(HUInlineDatePickerCell *)self datePicker];
      leadingAnchor = [datePicker leadingAnchor];
      contentView = [(HUInlineDatePickerCell *)self contentView];
      leadingAnchor2 = [contentView leadingAnchor];
      [(HUInlineDatePickerCell *)self leftMargin];
      trailingAnchor = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
      [array addObject:trailingAnchor];
    }

    else
    {
      textLabel = [(HUInlineDatePickerCell *)self textLabel];
      topAnchor = [textLabel topAnchor];
      contentView2 = [(HUInlineDatePickerCell *)self contentView];
      readableContentGuide = [contentView2 readableContentGuide];
      topAnchor2 = [readableContentGuide topAnchor];
      v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [array addObject:v15];

      textLabel2 = [(HUInlineDatePickerCell *)self textLabel];
      bottomAnchor = [textLabel2 bottomAnchor];
      contentView3 = [(HUInlineDatePickerCell *)self contentView];
      readableContentGuide2 = [contentView3 readableContentGuide];
      bottomAnchor2 = [readableContentGuide2 bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [array addObject:v21];

      textLabel3 = [(HUInlineDatePickerCell *)self textLabel];
      leadingAnchor3 = [textLabel3 leadingAnchor];
      contentView4 = [(HUInlineDatePickerCell *)self contentView];
      readableContentGuide3 = [contentView4 readableContentGuide];
      leadingAnchor4 = [readableContentGuide3 leadingAnchor];
      [(HUInlineDatePickerCell *)self leftMargin];
      v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
      [array addObject:v27];

      datePicker = [(HUInlineDatePickerCell *)self datePicker];
      leadingAnchor = [datePicker trailingAnchor];
      contentView = [(HUInlineDatePickerCell *)self contentView];
      leadingAnchor2 = [contentView readableContentGuide];
      trailingAnchor = [leadingAnchor2 trailingAnchor];
      v28 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
      [array addObject:v28];
    }

    datePicker2 = [(HUInlineDatePickerCell *)self datePicker];
    topAnchor3 = [datePicker2 topAnchor];
    contentView5 = [(HUInlineDatePickerCell *)self contentView];
    layoutMarginsGuide = [contentView5 layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide topAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-10.0];
    [array addObject:v34];

    datePicker3 = [(HUInlineDatePickerCell *)self datePicker];
    bottomAnchor3 = [datePicker3 bottomAnchor];
    contentView6 = [(HUInlineDatePickerCell *)self contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide2 bottomAnchor];
    v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
    [array addObject:v40];

    datePicker4 = [(HUInlineDatePickerCell *)self datePicker];
    leadingAnchor5 = [datePicker4 leadingAnchor];
    textLabel4 = [(HUInlineDatePickerCell *)self textLabel];
    trailingAnchor2 = [textLabel4 trailingAnchor];
    v45 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor2 constant:10.0];
    [array addObject:v45];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(HUInlineDatePickerCell *)self setAllConstraints:array];
  }

  v46.receiver = self;
  v46.super_class = HUInlineDatePickerCell;
  [(HUInlineDatePickerCell *)&v46 updateConstraints];
}

- (NSDateComponents)timeComponents
{
  datePicker = [(HUInlineDatePickerCell *)self datePicker];
  calendar = [datePicker calendar];
  datePicker2 = [(HUInlineDatePickerCell *)self datePicker];
  date = [datePicker2 date];
  v7 = [calendar components:96 fromDate:date];

  return v7;
}

- (void)setTimeComponents:(id)components
{
  componentsCopy = components;
  datePicker = [(HUInlineDatePickerCell *)self datePicker];
  calendar = [datePicker calendar];
  v8 = [calendar dateFromComponents:componentsCopy];

  if (v8)
  {
    datePicker2 = [(HUInlineDatePickerCell *)self datePicker];
    [datePicker2 setDate:v8];
  }
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  textLabel = [(HUInlineDatePickerCell *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)setHideTitleLabel:(BOOL)label
{
  if (self->_hideTitleLabel != label)
  {
    self->_hideTitleLabel = label;
    [(HUInlineDatePickerCell *)self setAllConstraints:0];

    [(HUInlineDatePickerCell *)self setNeedsUpdateConstraints];
  }
}

- (void)_valueChanged:(id)changed
{
  delegate = [(HUInlineDatePickerCell *)self delegate];
  datePicker = [(HUInlineDatePickerCell *)self datePicker];
  date = [datePicker date];
  [delegate datePickerCell:self didSelectDate:date];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    v5 = !disabled;
    datePicker = [(HUInlineDatePickerCell *)self datePicker];
    [datePicker setUserInteractionEnabled:v5];

    if (v5)
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }
    v8 = ;
    textLabel = [(HUInlineDatePickerCell *)self textLabel];
    [textLabel setTextColor:v8];
  }
}

- (HUInlineDatePickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end