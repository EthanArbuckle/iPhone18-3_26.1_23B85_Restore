@interface NTKDateComplicationController
+ (id)_textForDate:(id)a3 dateStyle:(unint64_t)a4;
+ (id)textForDateStyle:(unint64_t)a3;
- (void)_activate;
- (void)_configureForLegacyDisplay:(id)a3;
- (void)_deactivate;
- (void)_handleTimeChangeNotification;
- (void)_setTextInDisplayIfNeededWithDate:(id)a3;
- (void)_updateDisplay;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
@end

@implementation NTKDateComplicationController

- (void)_activate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleTimeChangeNotification name:*MEMORY[0x277CBE620] object:0];
  [v3 addObserver:self selector:sel__handleTimeChangeNotification name:*MEMORY[0x277D766F0] object:0];
  [v3 addObserver:self selector:sel__handleTimeChangeNotification name:*MEMORY[0x277CBE580] object:0];
  v4 = _NTKLoggingObjectForDomain(15, "NTKLoggingDomainSignificantTimeChange");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218242;
    v6 = self;
    v7 = 2080;
    v8 = "[NTKDateComplicationController _activate]";
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "%p: %s", &v5, 0x16u);
  }
}

- (void)_deactivate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D766F0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CBE580] object:0];
  v4 = _NTKLoggingObjectForDomain(15, "NTKLoggingDomainSignificantTimeChange");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218242;
    v6 = self;
    v7 = 2080;
    v8 = "[NTKDateComplicationController _deactivate]";
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "%p: %s", &v5, 0x16u);
  }
}

- (void)_configureForLegacyDisplay:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    self->_displayDateStyle = [v5 desiredDateComplicationDateStyle];
  }

  else
  {
    v4 = [(NTKComplicationController *)self complication];
    self->_displayDateStyle = [v4 dateStyle];
  }

  [(NTKDateComplicationController *)self _updateDisplay];
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if (([v6 isEqualToDate:self->_timeTravelDate] & 1) == 0)
  {
    objc_storeStrong(&self->_timeTravelDate, a3);
    [(NTKDateComplicationController *)self _updateDisplay];
  }
}

- (void)_handleTimeChangeNotification
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(15, "NTKLoggingDomainSignificantTimeChange");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v6 = self;
    v7 = 2080;
    v8 = "[NTKDateComplicationController _handleTimeChangeNotification]";
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%p: %s", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NTKDateComplicationController__handleTimeChangeNotification__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __62__NTKDateComplicationController__handleTimeChangeNotification__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = *(a1 + 32);

  return [v4 _updateDisplay];
}

- (void)_updateDisplay
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(15, "NTKLoggingDomainSignificantTimeChange");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = "[NTKDateComplicationController _updateDisplay]";
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%p: %s", &v8, 0x16u);
  }

  v4 = [(NTKComplicationController *)self legacyDisplay];

  if (v4)
  {
    v5 = CLKForcedTime();
    if (!v5)
    {
      timeTravelDate = self->_timeTravelDate;
      if (timeTravelDate)
      {
        v7 = timeTravelDate;
      }

      else
      {
        v7 = +[(CLKDate *)NTKDate];
      }

      v5 = v7;
    }

    [(NTKDateComplicationController *)self _setTextInDisplayIfNeededWithDate:v5];
  }
}

+ (id)textForDateStyle:(unint64_t)a3
{
  v5 = +[(CLKDate *)NTKDate];
  v6 = [a1 _textForDate:v5 dateStyle:a3];

  return v6;
}

+ (id)_textForDate:(id)a3 dateStyle:(unint64_t)a4
{
  if (a4)
  {
    v5 = [NTKComplicationDateFormatter stringForDate:a3 withStyle:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setTextInDisplayIfNeededWithDate:(id)a3
{
  if (self->_displayDateStyle)
  {
    v4 = a3;
    v5 = [(NTKComplicationController *)self legacyDisplay];
    displayDateStyle = self->_displayDateStyle;
    v14 = v5;
    if (objc_opt_respondsToSelector())
    {
      v7 = [v14 overrideDateStyle];
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = displayDateStyle == 8;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      displayDateStyle = v7;
    }

    v9 = [objc_opt_class() _textForDate:v4 dateStyle:displayDateStyle];
    v10 = +[NTKComplicationDateFormatter _localizedDayDateFormatter];
    v11 = [v10 stringFromDate:v4];

    v12 = [v9 rangeOfString:v11];
    [v14 setDateComplicationText:v9 withDayRange:v12 forDateStyle:{v13, self->_displayDateStyle}];
  }
}

@end