@interface DBAudioNotificationManager
- (BOOL)_shouldShowNotificationForService:(id)a3;
- (DBAudioNotificationManager)initWithWindow:(id)a3 viewController:(id)a4 car:(id)a5;
- (void)_handleServiceUpdate:(id)a3;
- (void)setShouldSuspendNotification:(BOOL)a3;
- (void)updateObserversForCar:(id)a3;
- (void)volumeService:(id)a3 didUpdateMute:(BOOL)a4;
- (void)volumeService:(id)a3 didUpdateVolume:(unsigned __int8)a4;
@end

@implementation DBAudioNotificationManager

- (DBAudioNotificationManager)initWithWindow:(id)a3 viewController:(id)a4 car:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DBAudioNotificationManager;
  v12 = [(DBAudioNotificationManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioWindow, a3);
    objc_storeStrong(&v13->_audioViewController, a4);
    [(DBAudioNotificationManager *)v13 updateObserversForCar:v11];
  }

  return v13;
}

- (void)updateObserversForCar:(id)a3
{
  v4 = [a3 audioSettings];
  v5 = [v4 volumes];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__DBAudioNotificationManager_updateObserversForCar___block_invoke;
  v6[3] = &unk_278F01708;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
}

- (void)setShouldSuspendNotification:(BOOL)a3
{
  self->_shouldSuspendNotification = a3;
  if (a3)
  {
    v3 = [(DBAudioNotificationManager *)self audioViewController];
    [v3 hideNotification];
  }
}

- (void)volumeService:(id)a3 didUpdateVolume:(unsigned __int8)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = v4;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Volume updated to: %hhu, for service: %@", v8, 0x12u);
  }

  [(DBAudioNotificationManager *)self _handleServiceUpdate:v6];
}

- (void)volumeService:(id)a3 didUpdateMute:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"unmuted";
    if (v4)
    {
      v8 = @"muted";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Mute state updated to: %@, for service: %@", &v9, 0x16u);
  }

  [(DBAudioNotificationManager *)self _handleServiceUpdate:v6];
}

- (void)_handleServiceUpdate:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DBAudioNotificationManager *)self _shouldShowNotificationForService:v4])
  {
    [(DBAudioWindow *)self->_audioWindow setHidden:0];
    [(DBAudioNotificationViewController *)self->_audioViewController updateForService:v4];
  }

  else
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Can't show audio notification for service: %@", &v6, 0xCu);
    }
  }
}

- (BOOL)_shouldShowNotificationForService:(id)a3
{
  v4 = [a3 car];
  v5 = [v4 audioSettings];
  v6 = [v5 receivedAllValues];

  if ((v6 & 1) == 0)
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "AudioSettings has not received all values";
      v9 = buf;
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  if ([(DBAudioNotificationManager *)self shouldSuspendNotification])
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "Volume notification should be suspended";
      v9 = &v11;
LABEL_7:
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 1;
}

@end