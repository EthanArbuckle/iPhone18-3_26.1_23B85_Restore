@interface ASKAirplaneModeInquiry
- (ASKAirplaneModeInquiry)init;
- (ASKAirplaneModeInquiryDelegate)delegate;
- (BOOL)isEnabled;
- (void)airplaneModeChanged;
@end

@implementation ASKAirplaneModeInquiry

- (ASKAirplaneModeInquiry)init
{
  v6.receiver = self;
  v6.super_class = ASKAirplaneModeInquiry;
  v2 = [(ASKAirplaneModeInquiry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    radiosPreferences = v2->_radiosPreferences;
    v2->_radiosPreferences = v3;

    [(RadiosPreferences *)v2->_radiosPreferences setDelegate:v2];
  }

  return v2;
}

- (BOOL)isEnabled
{
  radiosPreferences = [(ASKAirplaneModeInquiry *)self radiosPreferences];
  airplaneMode = [radiosPreferences airplaneMode];

  return airplaneMode;
}

- (void)airplaneModeChanged
{
  delegate = [(ASKAirplaneModeInquiry *)self delegate];
  [delegate airplaneModeInquiryDidObserveChange:self];
}

- (ASKAirplaneModeInquiryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end