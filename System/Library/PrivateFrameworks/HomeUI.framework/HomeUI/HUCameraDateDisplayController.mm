@interface HUCameraDateDisplayController
- (BOOL)_isSameMinuteAsDate:(id)a3;
- (BOOL)_isSameSecondAsDate:(id)a3;
- (BOOL)_shouldUpdateDisplayWithDate:(id)a3;
- (HUActsAsLabel)dayLabel;
- (HUActsAsLabel)timeLabel;
- (HUCameraDateDisplayController)initWithDayOfWeekLabel:(id)a3 timeLabel:(id)a4;
- (void)_resetLabels;
- (void)_updateDayLabel;
- (void)_updateTimeLabel;
- (void)setCurrentDate:(id)a3;
- (void)updateDisplayDateWithDate:(id)a3 forType:(unint64_t)a4;
@end

@implementation HUCameraDateDisplayController

- (HUCameraDateDisplayController)initWithDayOfWeekLabel:(id)a3 timeLabel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HUCameraDateDisplayController;
  v8 = [(HUCameraDateDisplayController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(HUCameraDateDisplayController *)v8 setDayLabel:v6];
    [(HUCameraDateDisplayController *)v9 setTimeLabel:v7];
    [(HUCameraDateDisplayController *)v9 setDateDisplayType:1];
    [(HUCameraDateDisplayController *)v9 setDayHasChanged:1];
    v10 = [MEMORY[0x277CBEA80] currentCalendar];
    [(HUCameraDateDisplayController *)v9 setCalendar:v10];

    [(HUCameraDateDisplayController *)v9 setSecondUnitFlags:764];
    [(HUCameraDateDisplayController *)v9 setMinuteUnitFlags:636];
  }

  return v9;
}

- (void)updateDisplayDateWithDate:(id)a3 forType:(unint64_t)a4
{
  v6 = a3;
  if ([(HUCameraDateDisplayController *)self dateDisplayType]!= a4)
  {
    [(HUCameraDateDisplayController *)self setDateDisplayType:a4];
    [(HUCameraDateDisplayController *)self setDayHasChanged:1];
    goto LABEL_5;
  }

  if ([(HUCameraDateDisplayController *)self _shouldUpdateDisplayWithDate:v6])
  {
LABEL_5:
    [(HUCameraDateDisplayController *)self setCurrentDate:v6];
  }
}

- (BOOL)_shouldUpdateDisplayWithDate:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraDateDisplayController *)self currentDate];
  v6 = [v5 isEqualToDate:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    if ([(HUCameraDateDisplayController *)self dateDisplayType])
    {
      v8 = [(HUCameraDateDisplayController *)self _isSameMinuteAsDate:v4];
    }

    else
    {
      v8 = [(HUCameraDateDisplayController *)self _isSameSecondAsDate:v4];
    }

    v7 = !v8;
  }

  return v7;
}

- (BOOL)_isSameSecondAsDate:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraDateDisplayController *)self calendar];
  v6 = [v5 components:-[HUCameraDateDisplayController secondUnitFlags](self fromDate:{"secondUnitFlags"), v4}];

  v7 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v8 = [v7 year];
  if (v8 != [v6 year])
  {
    goto LABEL_11;
  }

  v9 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v10 = [v9 month];
  if (v10 != [v6 month])
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  v11 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v12 = [v11 day];
  if (v12 != [v6 day])
  {

    goto LABEL_10;
  }

  v13 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v14 = [v13 weekday];
  v15 = [v6 weekday];

  if (v14 != v15)
  {
LABEL_12:
    [(HUCameraDateDisplayController *)self setDayHasChanged:1];
    goto LABEL_13;
  }

  v16 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v17 = [v16 hour];
  if (v17 != [v6 hour])
  {
LABEL_16:

    goto LABEL_13;
  }

  v18 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v19 = [v18 minute];
  if (v19 != [v6 minute])
  {

    goto LABEL_16;
  }

  v20 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v21 = [v20 second];
  v22 = [v6 second];

  if (v21 != v22)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v23 = 1;
LABEL_14:

  return v23;
}

- (BOOL)_isSameMinuteAsDate:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraDateDisplayController *)self calendar];
  v6 = [v5 components:-[HUCameraDateDisplayController minuteUnitFlags](self fromDate:{"minuteUnitFlags"), v4}];

  v7 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v8 = [v7 year];
  if (v8 != [v6 year])
  {
    goto LABEL_10;
  }

  v9 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v10 = [v9 month];
  if (v10 != [v6 month])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v11 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v12 = [v11 day];
  if (v12 != [v6 day])
  {

    goto LABEL_9;
  }

  v13 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v14 = [v13 weekday];
  v15 = [v6 weekday];

  if (v14 != v15)
  {
LABEL_11:
    [(HUCameraDateDisplayController *)self setDayHasChanged:1];
    goto LABEL_12;
  }

  v16 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v17 = [v16 hour];
  if (v17 != [v6 hour])
  {

    goto LABEL_12;
  }

  v18 = [(HUCameraDateDisplayController *)self currentDateComponents];
  v19 = [v18 minute];
  v20 = [v6 minute];

  if (v19 != v20)
  {
LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v21 = 1;
LABEL_13:

  return v21;
}

- (void)setCurrentDate:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_currentDate, a3);
  if (self->_currentDate)
  {
    v5 = [(HUCameraDateDisplayController *)self dateDisplayType];
    v6 = [(HUCameraDateDisplayController *)self calendar];
    if (v5)
    {
      v7 = [(HUCameraDateDisplayController *)self minuteUnitFlags];
    }

    else
    {
      v7 = [(HUCameraDateDisplayController *)self secondUnitFlags];
    }

    v8 = [v6 components:v7 fromDate:self->_currentDate];
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
  v4 = [(HUCameraDateDisplayController *)self timeLabel];
  [v4 setAttributedText:v3];

  v5 = [(HUCameraDateDisplayController *)self dayLabel];
  [v5 setText:&stru_2823E0EE8];
}

- (void)_updateTimeLabel
{
  v3 = [(HUCameraDateDisplayController *)self dateDisplayType];
  v4 = MEMORY[0x277D14500];
  v7 = [(HUCameraDateDisplayController *)self currentDate];
  if (v3)
  {
    [v4 attributedShortTimeStringFromDate:v7];
  }

  else
  {
    [v4 attributedFullTimeStringFromDate:v7];
  }
  v5 = ;
  v6 = [(HUCameraDateDisplayController *)self timeLabel];
  [v6 setAttributedText:v5];
}

- (void)_updateDayLabel
{
  if ([(HUCameraDateDisplayController *)self dayHasChanged])
  {
    v3 = MEMORY[0x277D14500];
    v4 = [(HUCameraDateDisplayController *)self currentDate];
    v5 = [v3 dayStringFromDate:v4];
    v6 = [(HUCameraDateDisplayController *)self dayLabel];
    [v6 setText:v5];

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