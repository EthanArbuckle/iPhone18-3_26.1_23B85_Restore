@interface FTCServiceMonitor
- (FTCServiceMonitor)initWithServiceType:(int64_t)a3;
- (void)_postAvailability:(int64_t)a3;
- (void)_updateAvailability;
- (void)dealloc;
@end

@implementation FTCServiceMonitor

- (FTCServiceMonitor)initWithServiceType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = FTCServiceMonitor;
  v4 = [(FTCServiceMonitor *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    if (a3 <= 2)
    {
      v6 = off_278FF1938[a3];
      IMUserScopedNotification();
    }

    [MEMORY[0x277CFB990] weakRefWithObject:v5];
    v5->_token = IMDispatchForNotify();
    [(FTCServiceMonitor *)v5 _updateAvailability];
  }

  return v5;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = FTCServiceMonitor;
  [(FTCServiceMonitor *)&v3 dealloc];
}

- (void)_postAvailability:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v5, @"availability", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)_updateAvailability
{
  v33 = *MEMORY[0x277D85DE8];
  p_availability = &self->_availability;
  availability = self->_availability;
  state64 = 0;
  notify_get_state(self->_token, &state64);
  v5 = state64 != 0;
  *p_availability = v5;
  if (availability != v5)
  {
    v6 = OSLogHandleForRegistrationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FTCServiceMonitor *)self serviceType];
      if ((v7 + 1) > 3)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_278FF1950[v7 + 1];
      }

      if ((availability + 2) > 3)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_278FF1970[availability + 2];
      }

      v10 = self->_availability + 2;
      if (v10 > 3)
      {
        v11 = @"Unknown";
      }

      else
      {
        v11 = off_278FF1970[v10];
      }

      *buf = 138413058;
      v26 = self;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_24A9AC000, v6, OS_LOG_TYPE_DEFAULT, "%@ updating availability for %@   => from %@ to %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
    {
      v12 = [(FTCServiceMonitor *)self serviceType];
      if ((v12 + 1) <= 3)
      {
        v19 = off_278FF1950[v12 + 1];
      }

      if ((availability + 2) <= 3)
      {
        v20 = off_278FF1970[availability + 2];
      }

      v21 = self->_availability + 2;
      if (v21 <= 3)
      {
        v22 = off_278FF1970[v21];
      }

      sub_24A9ACE54(@"ServiceAvailability", @"%@ updating availability for %@   => from %@ to %@", v13, v14, v15, v16, v17, v18, self);
    }

    [(FTCServiceMonitor *)self _postAvailability:self->_availability];
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end