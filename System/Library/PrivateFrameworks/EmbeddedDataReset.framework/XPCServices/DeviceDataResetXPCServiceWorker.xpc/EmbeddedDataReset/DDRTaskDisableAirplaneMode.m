@interface DDRTaskDisableAirplaneMode
- (RadiosPreferences)radioPreference;
- (void)run;
@end

@implementation DDRTaskDisableAirplaneMode

- (RadiosPreferences)radioPreference
{
  radioPreference = self->_radioPreference;
  if (!radioPreference)
  {
    v4 = objc_alloc_init(RadiosPreferences);
    v5 = self->_radioPreference;
    self->_radioPreference = v4;

    [(RadiosPreferences *)self->_radioPreference refresh];
    radioPreference = self->_radioPreference;
  }

  return radioPreference;
}

- (void)run
{
  v2 = [(DDRTaskDisableAirplaneMode *)self radioPreference];
  [v2 setAirplaneMode:0];
}

@end