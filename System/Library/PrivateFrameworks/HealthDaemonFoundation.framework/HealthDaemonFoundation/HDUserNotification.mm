@interface HDUserNotification
- (void)_handleResponse:(unint64_t)response;
- (void)dealloc;
- (void)presentWithResponseHandler:(id)handler;
- (void)setNotification:(__CFUserNotification *)notification;
@end

@implementation HDUserNotification

- (void)setNotification:(__CFUserNotification *)notification
{
  notification = self->_notification;
  if (notification != notification)
  {
    if (notification)
    {
      CFRelease(notification);
    }

    self->_notification = notification;
    if (notification)
    {

      CFRetain(notification);
    }
  }
}

- (void)dealloc
{
  [(HDUserNotification *)self setNotification:0];
  v3.receiver = self;
  v3.super_class = HDUserNotification;
  [(HDUserNotification *)&v3 dealloc];
}

- (void)presentWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_responseHandler)
  {
    [(HDUserNotification *)a2 presentWithResponseHandler:?];
  }

  v6 = _Block_copy(handlerCopy);
  responseHandler = self->_responseHandler;
  self->_responseHandler = v6;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = dictionary;
  if (self->_additionalDescriptors)
  {
    [dictionary addEntriesFromDictionary:?];
  }

  title = self->_title;
  if (title)
  {
    [v9 setObject:title forKeyedSubscript:*MEMORY[0x277CBF188]];
  }

  message = self->_message;
  if (message)
  {
    [v9 setObject:message forKeyedSubscript:*MEMORY[0x277CBF198]];
  }

  defaultButton = self->_defaultButton;
  if (defaultButton)
  {
    [v9 setObject:defaultButton forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  }

  cancelButton = self->_cancelButton;
  if (cancelButton)
  {
    [v9 setObject:cancelButton forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  otherButton = self->_otherButton;
  if (otherButton)
  {
    [v9 setObject:otherButton forKeyedSubscript:*MEMORY[0x277CBF218]];
  }

  if (self->_contentDefinition)
  {
    currentDeviceSupportsDynamicIsland = [MEMORY[0x277CCDD30] currentDeviceSupportsDynamicIsland];

    if (currentDeviceSupportsDynamicIsland)
    {
      imageDefinition = [(HDUserNotificationSystemApertureContentDefinition *)self->_contentDefinition imageDefinition];
      v17 = MEMORY[0x277D66CD0];
      systemColorName = [imageDefinition systemColorName];
      v19 = [v17 definitionWithColorName:systemColorName];

      v20 = MEMORY[0x277D66CD8];
      systemImageName = [imageDefinition systemImageName];
      v22 = [v20 definitionWithSystemImageName:systemImageName tintColorDefinition:v19];

      v23 = objc_alloc_init(MEMORY[0x277D66CE0]);
      [v23 setLeadingAssetDefinition:v22];
      [v23 setAlertHeader:self->_title];
      [v23 setAlertMessage:self->_message];
      [v23 setPreventsAutomaticDismissal:{-[HDUserNotificationSystemApertureContentDefinition preventAutomaticDismissal](self->_contentDefinition, "preventAutomaticDismissal")}];
      [v23 setDefaultButtonTitle:self->_defaultButton];
      [v23 setAlternateButtonTitle:self->_cancelButton];
      [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67420]];
      build = [v23 build];
      [v9 setObject:build forKeyedSubscript:*MEMORY[0x277D67418]];
    }
  }

  alertLevel = [(HDUserNotification *)self alertLevel];
  if ((alertLevel - 1) >= 3)
  {
    v26 = 3;
  }

  else
  {
    v26 = 3 - alertLevel;
  }

  error = 0;
  v27 = CFUserNotificationCreate(0, 0.0, [(HDUserNotification *)self userNotificationOptions]| v26, &error, v9);
  if (v27)
  {
    v28 = v27;
    [(HDUserNotification *)self setNotification:v27];
    os_unfair_lock_lock(&_pendingNotificationsLock);
    v29 = _pendingNotifications;
    if (!_pendingNotifications)
    {
      v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v31 = _pendingNotifications;
      _pendingNotifications = v30;

      v29 = _pendingNotifications;
    }

    [v29 addObject:self];
    os_unfair_lock_unlock(&_pendingNotificationsLock);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__HDUserNotification_presentWithResponseHandler___block_invoke;
    v32[3] = &__block_descriptor_40_e5_v8__0l;
    v32[4] = v28;
    dispatch_async(MEMORY[0x277D85CD0], v32);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, self, 1, 0);
  }
}

void __49__HDUserNotification_presentWithResponseHandler___block_invoke(uint64_t a1)
{
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, *(a1 + 32), _HDCFNotificationCallback, 0);
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF058]);
  CFRelease(RunLoopSource);
  v4 = *(a1 + 32);

  CFRelease(v4);
}

- (void)_handleResponse:(unint64_t)response
{
  (*(self->_responseHandler + 2))();
  responseHandler = self->_responseHandler;
  self->_responseHandler = 0;
}

- (void)presentWithResponseHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDUserNotification.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"!_responseHandler"}];
}

@end