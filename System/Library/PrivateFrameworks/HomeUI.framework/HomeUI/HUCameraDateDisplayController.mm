@interface HUCameraDateDisplayController
- (BOOL)_isSameMinuteAsDate:(id)date;
- (BOOL)_isSameSecondAsDate:(id)date;
- (BOOL)_shouldUpdateDisplayWithDate:(id)date;
- (HUActsAsLabel)dayLabel;
- (HUActsAsLabel)timeLabel;
- (HUCameraDateDisplayController)initWithDayOfWeekLabel:(id)label timeLabel:(id)timeLabel;
- (void)_resetLabels;
- (void)_updateDayLabel;
- (void)_updateTimeLabel;
- (void)setCurrentDate:(id)date;
- (void)updateDisplayDateWithDate:(id)date forType:(unint64_t)type;
@end

@implementation HUCameraDateDisplayController

- (HUCameraDateDisplayController)initWithDayOfWeekLabel:(id)label timeLabel:(id)timeLabel
{
  labelCopy = label;
  timeLabelCopy = timeLabel;
  v12.receiver = self;
  v12.super_class = HUCameraDateDisplayController;
  v8 = [(HUCameraDateDisplayController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(HUCameraDateDisplayController *)v8 setDayLabel:labelCopy];
    [(HUCameraDateDisplayController *)v9 setTimeLabel:timeLabelCopy];
    [(HUCameraDateDisplayController *)v9 setDateDisplayType:1];
    [(HUCameraDateDisplayController *)v9 setDayHasChanged:1];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    [(HUCameraDateDisplayController *)v9 setCalendar:currentCalendar];

    [(HUCameraDateDisplayController *)v9 setSecondUnitFlags:764];
    [(HUCameraDateDisplayController *)v9 setMinuteUnitFlags:636];
  }

  return v9;
}

- (void)updateDisplayDateWithDate:(id)date forType:(unint64_t)type
{
  dateCopy = date;
  if ([(HUCameraDateDisplayController *)self dateDisplayType]!= type)
  {
    [(HUCameraDateDisplayController *)self setDateDisplayType:type];
    [(HUCameraDateDisplayController *)self setDayHasChanged:1];
    goto LABEL_5;
  }

  if ([(HUCameraDateDisplayController *)self _shouldUpdateDisplayWithDate:dateCopy])
  {
LABEL_5:
    [(HUCameraDateDisplayController *)self setCurrentDate:dateCopy];
  }
}

- (BOOL)_shouldUpdateDisplayWithDate:(id)date
{
  dateCopy = date;
  currentDate = [(HUCameraDateDisplayController *)self currentDate];
  v6 = [currentDate isEqualToDate:dateCopy];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    if ([(HUCameraDateDisplayController *)self dateDisplayType])
    {
      v8 = [(HUCameraDateDisplayController *)self _isSameMinuteAsDate:dateCopy];
    }

    else
    {
      v8 = [(HUCameraDateDisplayController *)self _isSameSecondAsDate:dateCopy];
    }

    v7 = !v8;
  }

  return v7;
}

- (BOOL)_isSameSecondAsDate:(id)date
{
  dateCopy = date;
  calendar = [(HUCameraDateDisplayController *)self calendar];
  v6 = [calendar components:-[HUCameraDateDisplayController secondUnitFlags](self fromDate:{"secondUnitFlags"), dateCopy}];

  currentDateComponents = [(HUCameraDateDisplayController *)self currentDateComponents];
  year = [currentDateComponents year];
  if (year != [v6 year])
  {
    goto LABEL_11;
  }

  currentDateComponents2 = [(HUCameraDateDisplayController *)self currentDateComponents];
  month = [currentDateComponents2 month];
  if (month != [v6 month])
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  currentDateComponents3 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v12 = [currentDateComponents3 day];
  if (v12 != [v6 day])
  {

    goto LABEL_10;
  }

  currentDateComponents4 = [(HUCameraDateDisplayController *)self currentDateComponents];
  weekday = [currentDateComponents4 weekday];
  weekday2 = [v6 weekday];

  if (weekday != weekday2)
  {
LABEL_12:
    [(HUCameraDateDisplayController *)self setDayHasChanged:1];
    goto LABEL_13;
  }

  currentDateComponents5 = [(HUCameraDateDisplayController *)self currentDateComponents];
  hour = [currentDateComponents5 hour];
  if (hour != [v6 hour])
  {
LABEL_16:

    goto LABEL_13;
  }

  currentDateComponents6 = [(HUCameraDateDisplayController *)self currentDateComponents];
  minute = [currentDateComponents6 minute];
  if (minute != [v6 minute])
  {

    goto LABEL_16;
  }

  currentDateComponents7 = [(HUCameraDateDisplayController *)self currentDateComponents];
  second = [currentDateComponents7 second];
  second2 = [v6 second];

  if (second != second2)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v23 = 1;
LABEL_14:

  return v23;
}

- (BOOL)_isSameMinuteAsDate:(id)date
{
  dateCopy = date;
  calendar = [(HUCameraDateDisplayController *)self calendar];
  v6 = [calendar components:-[HUCameraDateDisplayController minuteUnitFlags](self fromDate:{"minuteUnitFlags"), dateCopy}];

  currentDateComponents = [(HUCameraDateDisplayController *)self currentDateComponents];
  year = [currentDateComponents year];
  if (year != [v6 year])
  {
    goto LABEL_10;
  }

  currentDateComponents2 = [(HUCameraDateDisplayController *)self currentDateComponents];
  month = [currentDateComponents2 month];
  if (month != [v6 month])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  currentDateComponents3 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v12 = [currentDateComponents3 day];
  if (v12 != [v6 day])
  {

    goto LABEL_9;
  }

  currentDateComponents4 = [(HUCameraDateDisplayController *)self currentDateComponents];
  weekday = [currentDateComponents4 weekday];
  weekday2 = [v6 weekday];

  if (weekday != weekday2)
  {
LABEL_11:
    [(HUCameraDateDisplayController *)self setDayHasChanged:1];
    goto LABEL_12;
  }

  currentDateComponents5 = [(HUCameraDateDisplayController *)self currentDateComponents];
  hour = [currentDateComponents5 hour];
  if (hour != [v6 hour])
  {

    goto LABEL_12;
  }

  currentDateComponents6 = [(HUCameraDateDisplayController *)self currentDateComponents];
  minute = [currentDateComponents6 minute];
  minute2 = [v6 minute];

  if (minute != minute2)
  {
LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v21 = 1;
LABEL_13:

  return v21;
}

- (void)setCurrentDate:(id)date
{
  dateCopy = date;
  objc_storeStrong(&self->_currentDate, date);
  if (self->_currentDate)
  {
    dateDisplayType = [(HUCameraDateDisplayController *)self dateDisplayType];
    calendar = [(HUCameraDateDisplayController *)self calendar];
    if (dateDisplayType)
    {
      minuteUnitFlags = [(HUCameraDateDisplayController *)self minuteUnitFlags];
    }

    else
    {
      minuteUnitFlags = [(HUCameraDateDisplayController *)self secondUnitFlags];
    }

    v8 = [calendar components:minuteUnitFlags fromDate:self->_currentDate];
    [(HUCameraDateDisplayController *)self setCurrentDateComponents:v8];

    [(HUCameraDateDisplayController *)self _updateTimeLabel];
    [(HUCameraDateDisplayController *)self _updateDayLabel];
  }

  else
  {
    [(HUCameraDateDisplayController *)self _resetLabels];
  }
}

- (void)_resetLabels
{
  v3 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2823E0EE8];
  timeLabel = [(HUCameraDateDisplayController *)self timeLabel];
  [timeLabel setAttributedText:v3];

  dayLabel = [(HUCameraDateDisplayController *)self dayLabel];
  [dayLabel setText:&stru_2823E0EE8];
}

- (void)_updateTimeLabel
{
  dateDisplayType = [(HUCameraDateDisplayController *)self dateDisplayType];
  v4 = MEMORY[0x277D14500];
  currentDate = [(HUCameraDateDisplayController *)self currentDate];
  if (dateDisplayType)
  {
    [v4 attributedShortTimeStringFromDate:currentDate];
  }

  else
  {
    [v4 attributedFullTimeStringFromDate:currentDate];
  }
  v5 = ;
  timeLabel = [(HUCameraDateDisplayController *)self timeLabel];
  [timeLabel setAttributedText:v5];
}

- (void)_updateDayLabel
{
  if ([(HUCameraDateDisplayController *)self dayHasChanged])
  {
    v3 = MEMORY[0x277D14500];
    currentDate = [(HUCameraDateDisplayController *)self currentDate];
    v5 = [v3 dayStringFromDate:currentDate];
    dayLabel = [(HUCameraDateDisplayController *)self dayLabel];
    [dayLabel setText:v5];

    [(HUCameraDateDisplayController *)self setDayHasChanged:0];
  }
}

- (HUActsAsLabel)dayLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_dayLabel);

  return WeakRetained;
}

- (HUActsAsLabel)timeLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_timeLabel);

  return WeakRetained;
}

@end