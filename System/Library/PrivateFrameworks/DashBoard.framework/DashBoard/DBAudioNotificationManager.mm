@interface DBAudioNotificationManager
- (BOOL)_shouldShowNotificationForService:(id)service;
- (DBAudioNotificationManager)initWithWindow:(id)window viewController:(id)controller car:(id)car;
- (void)_handleServiceUpdate:(id)update;
- (void)setShouldSuspendNotification:(BOOL)notification;
- (void)updateObserversForCar:(id)car;
- (void)volumeService:(id)service didUpdateMute:(BOOL)mute;
- (void)volumeService:(id)service didUpdateVolume:(unsigned __int8)volume;
@end

@implementation DBAudioNotificationManager

- (DBAudioNotificationManager)initWithWindow:(id)window viewController:(id)controller car:(id)car
{
  windowCopy = window;
  controllerCopy = controller;
  carCopy = car;
  v15.receiver = self;
  v15.super_class = DBAudioNotificationManager;
  v12 = [(DBAudioNotificationManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioWindow, window);
    objc_storeStrong(&v13->_audioViewController, controller);
    [(DBAudioNotificationManager *)v13 updateObserversForCar:carCopy];
  }

  return v13;
}

- (void)updateObserversForCar:(id)car
{
  audioSettings = [car audioSettings];
  volumes = [audioSettings volumes];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__DBAudioNotificationManager_updateObserversForCar___block_invoke;
  v6[3] = &unk_278F01708;
  v6[4] = self;
  [volumes enumerateObjectsUsingBlock:v6];
}

- (void)setShouldSuspendNotification:(BOOL)notification
{
  self->_shouldSuspendNotification = notification;
  if (notification)
  {
    audioViewController = [(DBAudioNotificationManager *)self audioViewController];
    [audioViewController hideNotification];
  }
}

- (void)volumeService:(id)service didUpdateVolume:(unsigned __int8)volume
{
  volumeCopy = volume;
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = volumeCopy;
    v9 = 2112;
    v10 = serviceCopy;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Volume updated to: %hhu, for service: %@", v8, 0x12u);
  }

  [(DBAudioNotificationManager *)self _handleServiceUpdate:serviceCopy];
}

- (void)volumeService:(id)service didUpdateMute:(BOOL)mute
{
  muteCopy = mute;
  v13 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"unmuted";
    if (muteCopy)
    {
      v8 = @"muted";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = serviceCopy;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Mute state updated to: %@, for service: %@", &v9, 0x16u);
  }

  [(DBAudioNotificationManager *)self _handleServiceUpdate:serviceCopy];
}

- (void)_handleServiceUpdate:(id)update
{
  v8 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if ([(DBAudioNotificationManager *)self _shouldShowNotificationForService:updateCopy])
  {
    [(DBAudioWindow *)self->_audioWindow setHidden:0];
    [(DBAudioNotificationViewController *)self->_audioViewController updateForService:updateCopy];
  }

  else
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = updateCopy;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Can't show audio notification for service: %@", &v6, 0xCu);
    }
  }
}

- (BOOL)_shouldShowNotificationForService:(id)service
{
  v4 = [service car];
  audioSettings = [v4 audioSettings];
  receivedAllValues = [audioSettings receivedAllValues];

  if ((receivedAllValues & 1) == 0)
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