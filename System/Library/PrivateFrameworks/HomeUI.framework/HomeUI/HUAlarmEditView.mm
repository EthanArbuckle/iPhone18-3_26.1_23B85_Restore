@interface HUAlarmEditView
- (HUAlarmEditView)initWithFrame:(CGRect)frame;
- (HUAlarmEditView)initWithFrame:(CGRect)frame supportsMusicAlarm:(BOOL)alarm;
- (void)layoutSubviews;
@end

@implementation HUAlarmEditView

- (HUAlarmEditView)initWithFrame:(CGRect)frame supportsMusicAlarm:(BOOL)alarm
{
  alarmCopy = alarm;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectIsNull(frame) || (v26.receiver = self, v26.super_class = HUAlarmEditView, v10 = [(HUAlarmEditView *)&v26 initWithFrame:x, y, width, height], (self = v10) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    v10->_accessorySupportsMusicAlarm = alarmCopy;
    if (alarmCopy)
    {
      v11 = objc_alloc(MEMORY[0x277D75B40]);
      v12 = [v11 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      settingsTable = self->_settingsTable;
      self->_settingsTable = v12;
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D753E8]);
      v16 = *MEMORY[0x277CBF3A0];
      v17 = *(MEMORY[0x277CBF3A0] + 8);
      v18 = *(MEMORY[0x277CBF3A0] + 16);
      v19 = *(MEMORY[0x277CBF3A0] + 24);
      v20 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
      timePicker = self->_timePicker;
      self->_timePicker = v20;

      [(UIDatePicker *)self->_timePicker setDatePickerMode:0];
      v22 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{v16, v17, v18, v19}];
      v23 = self->_settingsTable;
      self->_settingsTable = v22;

      [(UITableView *)self->_settingsTable _setTopPadding:0.0];
    }

    [(UITableView *)self->_settingsTable setAlwaysBounceVertical:0];
    [(HUAlarmEditView *)self addSubview:self->_settingsTable];
    if (!self->_accessorySupportsMusicAlarm)
    {
      [(HUAlarmEditView *)self addSubview:self->_timePicker];
    }

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HUAlarmEditView *)self setBackgroundColor:systemBackgroundColor];

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (HUAlarmEditView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectIsNull(frame) || (v20.receiver = self, v20.super_class = HUAlarmEditView, (self = [(HUAlarmEditView *)&v20 initWithFrame:x, y, width, height]) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D753E8]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    timePicker = self->_timePicker;
    self->_timePicker = v13;

    [(UIDatePicker *)self->_timePicker setDatePickerMode:0];
    v15 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{v9, v10, v11, v12}];
    settingsTable = self->_settingsTable;
    self->_settingsTable = v15;

    [(UITableView *)self->_settingsTable _setTopPadding:0.0];
    [(UITableView *)self->_settingsTable setAlwaysBounceVertical:0];
    [(HUAlarmEditView *)self addSubview:self->_settingsTable];
    [(HUAlarmEditView *)self addSubview:self->_timePicker];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HUAlarmEditView *)self setBackgroundColor:systemBackgroundColor];

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)layoutSubviews
{
  [(HUAlarmEditView *)self bounds];
  v4 = v3;
  v6 = v5;
  if (self->_accessorySupportsMusicAlarm)
  {
    v8 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(UIDatePicker *)self->_timePicker sizeToFit];
    [(UIDatePicker *)self->_timePicker frame];
    v9 = v11;
    v7 = 0.0;
    [(UIDatePicker *)self->_timePicker setFrame:0.0, 0.0, v4];
    v10 = v4;
    v8 = 0.0;
  }

  [(UITableView *)self->_settingsTable frame];
  if (!self->_accessorySupportsMusicAlarm)
  {
    v14.origin.x = v8;
    v14.origin.y = v7;
    v14.size.width = v10;
    v14.size.height = v9;
    MaxY = CGRectGetMaxY(v14);
    v6 = v6 - v9;
  }

  [(UITableView *)self->_settingsTable setFrame:0.0, MaxY, v4, v6];
  v13.receiver = self;
  v13.super_class = HUAlarmEditView;
  [(HUAlarmEditView *)&v13 layoutSubviews];
}

@end