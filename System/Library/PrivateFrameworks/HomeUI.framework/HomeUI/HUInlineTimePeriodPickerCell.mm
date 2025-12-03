@interface HUInlineTimePeriodPickerCell
- (HUInlineTimePeriodPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUInlineTimePeriodPickerCellDelegate)delegate;
- (id)endTimeComponents;
- (id)startTimeComponents;
- (void)_endValueChanged:(id)changed;
- (void)_startValueChanged:(id)changed;
- (void)setDisabled:(BOOL)disabled;
- (void)setEndTimeComponents:(id)components;
- (void)setStartTimeComponents:(id)components;
- (void)setTitle:(id)title;
- (void)updateConstraints;
@end

@implementation HUInlineTimePeriodPickerCell

- (HUInlineTimePeriodPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = HUInlineTimePeriodPickerCell;
  v4 = [(HUInlineTimePeriodPickerCell *)&v23 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(HUInlineTimePeriodPickerCell *)v4 textLabel];
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(HUInlineTimePeriodPickerCell *)v5 setStackView:v7];

    stackView = [(HUInlineTimePeriodPickerCell *)v5 stackView];
    [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView2 = [(HUInlineTimePeriodPickerCell *)v5 stackView];
    [stackView2 setAxis:0];

    stackView3 = [(HUInlineTimePeriodPickerCell *)v5 stackView];
    [stackView3 setAlignment:3];

    stackView4 = [(HUInlineTimePeriodPickerCell *)v5 stackView];
    [stackView4 setSpacing:8.0];

    contentView = [(HUInlineTimePeriodPickerCell *)v5 contentView];
    stackView5 = [(HUInlineTimePeriodPickerCell *)v5 stackView];
    [contentView addSubview:stackView5];

    v14 = objc_alloc_init(MEMORY[0x277D753E8]);
    startTimePicker = v5->_startTimePicker;
    v5->_startTimePicker = v14;

    [(UIDatePicker *)v5->_startTimePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v5->_startTimePicker setDatePickerMode:0];
    [(UIDatePicker *)v5->_startTimePicker setPreferredDatePickerStyle:2];
    [(UIDatePicker *)v5->_startTimePicker addTarget:v5 action:sel__startValueChanged_ forControlEvents:4096];
    stackView6 = [(HUInlineTimePeriodPickerCell *)v5 stackView];
    startTimePicker = [(HUInlineTimePeriodPickerCell *)v5 startTimePicker];
    [stackView6 addArrangedSubview:startTimePicker];

    v18 = objc_alloc_init(MEMORY[0x277D753E8]);
    endTimePicker = v5->_endTimePicker;
    v5->_endTimePicker = v18;

    [(UIDatePicker *)v5->_endTimePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v5->_endTimePicker setDatePickerMode:0];
    [(UIDatePicker *)v5->_endTimePicker setPreferredDatePickerStyle:2];
    [(UIDatePicker *)v5->_endTimePicker addTarget:v5 action:sel__endValueChanged_ forControlEvents:4096];
    stackView7 = [(HUInlineTimePeriodPickerCell *)v5 stackView];
    endTimePicker = [(HUInlineTimePeriodPickerCell *)v5 endTimePicker];
    [stackView7 addArrangedSubview:endTimePicker];
  }

  return v5;
}

- (void)updateConstraints
{
  allConstraints = [(HUInlineTimePeriodPickerCell *)self allConstraints];

  if (!allConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    stackView = [(HUInlineTimePeriodPickerCell *)self stackView];
    topAnchor = [stackView topAnchor];
    contentView = [(HUInlineTimePeriodPickerCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v9];

    stackView2 = [(HUInlineTimePeriodPickerCell *)self stackView];
    bottomAnchor = [stackView2 bottomAnchor];
    contentView2 = [(HUInlineTimePeriodPickerCell *)self contentView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v14];

    stackView3 = [(HUInlineTimePeriodPickerCell *)self stackView];
    trailingAnchor = [stackView3 trailingAnchor];
    contentView3 = [(HUInlineTimePeriodPickerCell *)self contentView];
    readableContentGuide = [contentView3 readableContentGuide];
    trailingAnchor2 = [readableContentGuide trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v20];

    textLabel = [(HUInlineTimePeriodPickerCell *)self textLabel];
    topAnchor3 = [textLabel topAnchor];
    contentView4 = [(HUInlineTimePeriodPickerCell *)self contentView];
    readableContentGuide2 = [contentView4 readableContentGuide];
    topAnchor4 = [readableContentGuide2 topAnchor];
    v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array addObject:v26];

    textLabel2 = [(HUInlineTimePeriodPickerCell *)self textLabel];
    bottomAnchor3 = [textLabel2 bottomAnchor];
    contentView5 = [(HUInlineTimePeriodPickerCell *)self contentView];
    readableContentGuide3 = [contentView5 readableContentGuide];
    bottomAnchor4 = [readableContentGuide3 bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v32];

    textLabel3 = [(HUInlineTimePeriodPickerCell *)self textLabel];
    leadingAnchor = [textLabel3 leadingAnchor];
    contentView6 = [(HUInlineTimePeriodPickerCell *)self contentView];
    readableContentGuide4 = [contentView6 readableContentGuide];
    leadingAnchor2 = [readableContentGuide4 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v38];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(HUInlineTimePeriodPickerCell *)self setAllConstraints:array];
  }

  v39.receiver = self;
  v39.super_class = HUInlineTimePeriodPickerCell;
  [(HUInlineTimePeriodPickerCell *)&v39 updateConstraints];
}

- (id)startTimeComponents
{
  startTimePicker = [(HUInlineTimePeriodPickerCell *)self startTimePicker];
  calendar = [startTimePicker calendar];
  startTimePicker2 = [(HUInlineTimePeriodPickerCell *)self startTimePicker];
  date = [startTimePicker2 date];
  v7 = [calendar components:96 fromDate:date];

  return v7;
}

- (void)setStartTimeComponents:(id)components
{
  componentsCopy = components;
  startTimePicker = [(HUInlineTimePeriodPickerCell *)self startTimePicker];
  calendar = [startTimePicker calendar];
  v8 = [calendar dateFromComponents:componentsCopy];

  if (v8)
  {
    startTimePicker2 = [(HUInlineTimePeriodPickerCell *)self startTimePicker];
    [startTimePicker2 setDate:v8];
  }
}

- (id)endTimeComponents
{
  endTimePicker = [(HUInlineTimePeriodPickerCell *)self endTimePicker];
  calendar = [endTimePicker calendar];
  endTimePicker2 = [(HUInlineTimePeriodPickerCell *)self endTimePicker];
  date = [endTimePicker2 date];
  v7 = [calendar components:96 fromDate:date];

  return v7;
}

- (void)setEndTimeComponents:(id)components
{
  componentsCopy = components;
  endTimePicker = [(HUInlineTimePeriodPickerCell *)self endTimePicker];
  calendar = [endTimePicker calendar];
  v8 = [calendar dateFromComponents:componentsCopy];

  if (v8)
  {
    endTimePicker2 = [(HUInlineTimePeriodPickerCell *)self endTimePicker];
    [endTimePicker2 setDate:v8];
  }
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  textLabel = [(HUInlineTimePeriodPickerCell *)self textLabel];
  [textLabel setText:titleCopy];

  [(HUInlineTimePeriodPickerCell *)self setAllConstraints:0];

  [(HUInlineTimePeriodPickerCell *)self setNeedsUpdateConstraints];
}

- (void)_startValueChanged:(id)changed
{
  delegate = [(HUInlineTimePeriodPickerCell *)self delegate];
  startTimePicker = [(HUInlineTimePeriodPickerCell *)self startTimePicker];
  date = [startTimePicker date];
  dateComponents = [date dateComponents];
  [delegate timePickerCell:self didSelectStartTime:dateComponents];
}

- (void)_endValueChanged:(id)changed
{
  delegate = [(HUInlineTimePeriodPickerCell *)self delegate];
  endTimePicker = [(HUInlineTimePeriodPickerCell *)self endTimePicker];
  date = [endTimePicker date];
  dateComponents = [date dateComponents];
  [delegate timePickerCell:self didSelectEndTime:dateComponents];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    v5 = !disabled;
    startTimePicker = [(HUInlineTimePeriodPickerCell *)self startTimePicker];
    [startTimePicker setUserInteractionEnabled:v5];

    endTimePicker = [(HUInlineTimePeriodPickerCell *)self endTimePicker];
    [endTimePicker setUserInteractionEnabled:v5];

    if (v5)
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }
    v9 = ;
    textLabel = [(HUInlineTimePeriodPickerCell *)self textLabel];
    [textLabel setTextColor:v9];
  }
}

- (HUInlineTimePeriodPickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end