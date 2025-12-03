@interface HUInlineDateAndTimePickerCell
- (HUInlineDateAndTimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUInlineDateAndTimePickerCellDelegate)delegate;
- (NSDateComponents)timeComponents;
- (double)datePickerHeight;
- (void)_valueChanged:(id)changed;
- (void)setDateAndTimePickerDate:(id)date;
- (void)setDisabled:(BOOL)disabled;
- (void)setHideTitleLabel:(BOOL)label;
- (void)setTimeComponents:(id)components;
- (void)setTitle:(id)title;
- (void)toggleTimePickerOptionVisibility:(BOOL)visibility;
- (void)updateConstraints;
@end

@implementation HUInlineDateAndTimePickerCell

- (HUInlineDateAndTimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = HUInlineDateAndTimePickerCell;
  v4 = [(HUInlineDateAndTimePickerCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(HUInlineDateAndTimePickerCell *)v4 textLabel];
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = objc_alloc_init(MEMORY[0x277D753E8]);
    datePicker = v5->_datePicker;
    v5->_datePicker = v7;

    [(UIDatePicker *)v5->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v5->_datePicker setDatePickerMode:2];
    [(UIDatePicker *)v5->_datePicker setPreferredDatePickerStyle:3];
    [(UIDatePicker *)v5->_datePicker addTarget:v5 action:sel__valueChanged_ forControlEvents:4096];
    contentView = [(HUInlineDateAndTimePickerCell *)v5 contentView];
    datePicker = [(HUInlineDateAndTimePickerCell *)v5 datePicker];
    [contentView addSubview:datePicker];
  }

  return v5;
}

- (void)updateConstraints
{
  allConstraints = [(HUInlineDateAndTimePickerCell *)self allConstraints];

  if (!allConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([(HUInlineDateAndTimePickerCell *)self hideTitleLabel])
    {
      datePicker = [(HUInlineDateAndTimePickerCell *)self datePicker];
      leadingAnchor = [datePicker leadingAnchor];
      contentView = [(HUInlineDateAndTimePickerCell *)self contentView];
      leadingAnchor2 = [contentView leadingAnchor];
      [(HUInlineDateAndTimePickerCell *)self leftMargin];
      v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
      [array addObject:v9];

      datePicker2 = [(HUInlineDateAndTimePickerCell *)self datePicker];
      trailingAnchor = [datePicker2 trailingAnchor];
      contentView2 = [(HUInlineDateAndTimePickerCell *)self contentView];
      trailingAnchor2 = [contentView2 trailingAnchor];
      v13TrailingAnchor = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [array addObject:v13TrailingAnchor];
    }

    else
    {
      textLabel = [(HUInlineDateAndTimePickerCell *)self textLabel];
      topAnchor = [textLabel topAnchor];
      contentView3 = [(HUInlineDateAndTimePickerCell *)self contentView];
      readableContentGuide = [contentView3 readableContentGuide];
      topAnchor2 = [readableContentGuide topAnchor];
      v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [array addObject:v20];

      textLabel2 = [(HUInlineDateAndTimePickerCell *)self textLabel];
      bottomAnchor = [textLabel2 bottomAnchor];
      contentView4 = [(HUInlineDateAndTimePickerCell *)self contentView];
      readableContentGuide2 = [contentView4 readableContentGuide];
      bottomAnchor2 = [readableContentGuide2 bottomAnchor];
      v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [array addObject:v26];

      textLabel3 = [(HUInlineDateAndTimePickerCell *)self textLabel];
      leadingAnchor3 = [textLabel3 leadingAnchor];
      contentView5 = [(HUInlineDateAndTimePickerCell *)self contentView];
      readableContentGuide3 = [contentView5 readableContentGuide];
      leadingAnchor4 = [readableContentGuide3 leadingAnchor];
      [(HUInlineDateAndTimePickerCell *)self leftMargin];
      v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
      [array addObject:v32];

      datePicker3 = [(HUInlineDateAndTimePickerCell *)self datePicker];
      leadingAnchor5 = [datePicker3 leadingAnchor];
      textLabel4 = [(HUInlineDateAndTimePickerCell *)self textLabel];
      trailingAnchor3 = [textLabel4 trailingAnchor];
      v37 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
      [array addObject:v37];

      datePicker2 = [(HUInlineDateAndTimePickerCell *)self datePicker];
      trailingAnchor = [datePicker2 trailingAnchor];
      contentView2 = [(HUInlineDateAndTimePickerCell *)self contentView];
      trailingAnchor2 = [contentView2 readableContentGuide];
      v13TrailingAnchor = [trailingAnchor2 trailingAnchor];
      v38 = [trailingAnchor constraintEqualToAnchor:v13TrailingAnchor];
      [array addObject:v38];
    }

    contentView6 = [(HUInlineDateAndTimePickerCell *)self contentView];
    heightAnchor = [contentView6 heightAnchor];
    v41 = [heightAnchor constraintGreaterThanOrEqualToConstant:216.0];

    [array addObject:v41];
    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(HUInlineDateAndTimePickerCell *)self setAllConstraints:array];
  }

  v42.receiver = self;
  v42.super_class = HUInlineDateAndTimePickerCell;
  [(HUInlineDateAndTimePickerCell *)&v42 updateConstraints];
}

- (void)toggleTimePickerOptionVisibility:(BOOL)visibility
{
  if (visibility)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  datePicker = [(HUInlineDateAndTimePickerCell *)self datePicker];
  [datePicker setDatePickerMode:v3];
}

- (double)datePickerHeight
{
  datePicker = [(HUInlineDateAndTimePickerCell *)self datePicker];
  [datePicker frame];
  v4 = v3;

  return v4;
}

- (void)setDateAndTimePickerDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    datePicker = [(HUInlineDateAndTimePickerCell *)self datePicker];
    [datePicker setDate:dateCopy];
  }
}

- (NSDateComponents)timeComponents
{
  datePicker = [(HUInlineDateAndTimePickerCell *)self datePicker];
  calendar = [datePicker calendar];
  datePicker2 = [(HUInlineDateAndTimePickerCell *)self datePicker];
  date = [datePicker2 date];
  v7 = [calendar components:96 fromDate:date];

  return v7;
}

- (void)setTimeComponents:(id)components
{
  componentsCopy = components;
  datePicker = [(HUInlineDateAndTimePickerCell *)self datePicker];
  calendar = [datePicker calendar];
  v8 = [calendar dateFromComponents:componentsCopy];

  if (v8)
  {
    datePicker2 = [(HUInlineDateAndTimePickerCell *)self datePicker];
    [datePicker2 setDate:v8];
  }
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  textLabel = [(HUInlineDateAndTimePickerCell *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)setHideTitleLabel:(BOOL)label
{
  if (self->_hideTitleLabel != label)
  {
    self->_hideTitleLabel = label;
    [(HUInlineDateAndTimePickerCell *)self setAllConstraints:0];

    [(HUInlineDateAndTimePickerCell *)self setNeedsUpdateConstraints];
  }
}

- (void)_valueChanged:(id)changed
{
  delegate = [(HUInlineDateAndTimePickerCell *)self delegate];
  datePicker = [(HUInlineDateAndTimePickerCell *)self datePicker];
  date = [datePicker date];
  [delegate dateAndTimePickerCell:self didSelectDate:date];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    v5 = !disabled;
    datePicker = [(HUInlineDateAndTimePickerCell *)self datePicker];
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
    textLabel = [(HUInlineDateAndTimePickerCell *)self textLabel];
    [textLabel setTextColor:v8];
  }
}

- (HUInlineDateAndTimePickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end