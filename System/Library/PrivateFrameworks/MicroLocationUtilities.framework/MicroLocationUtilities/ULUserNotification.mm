@interface ULUserNotification
+ (id)_queue;
+ (int64_t)_responseButtonFromOptionFlags:(unint64_t)flags;
+ (unint64_t)_userNotificationAlertLevelFlagsFromAlertLevel:(int64_t)level;
+ (void)_postNotificationWithAlertLevel:(int64_t)level alertOptions:(id)options handler:(id)handler;
+ (void)_presentWithAlertLevel:(int64_t)level title:(id)title message:(id)message defaultButton:(id)button cancelButton:(id)cancelButton otherButton:(id)otherButton handler:(id)handler;
+ (void)presentWithAlertLevel:(int64_t)level title:(id)title message:(id)message defaultButton:(id)button cancelButton:(id)cancelButton otherButton:(id)otherButton handler:(id)handler;
@end

@implementation ULUserNotification

+ (void)presentWithAlertLevel:(int64_t)level title:(id)title message:(id)message defaultButton:(id)button cancelButton:(id)cancelButton otherButton:(id)otherButton handler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  buttonCopy = button;
  cancelButtonCopy = cancelButton;
  otherButtonCopy = otherButton;
  handlerCopy = handler;
  _queue = [self _queue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __105__ULUserNotification_presentWithAlertLevel_title_message_defaultButton_cancelButton_otherButton_handler___block_invoke;
  v28[3] = &unk_2798DAA48;
  selfCopy = self;
  levelCopy = level;
  v29 = titleCopy;
  v30 = messageCopy;
  v31 = buttonCopy;
  v32 = cancelButtonCopy;
  v33 = otherButtonCopy;
  v34 = handlerCopy;
  v22 = handlerCopy;
  v23 = otherButtonCopy;
  v24 = cancelButtonCopy;
  v25 = buttonCopy;
  v26 = messageCopy;
  v27 = titleCopy;
  dispatch_async(_queue, v28);
}

+ (void)_presentWithAlertLevel:(int64_t)level title:(id)title message:(id)message defaultButton:(id)button cancelButton:(id)cancelButton otherButton:(id)otherButton handler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  buttonCopy = button;
  cancelButtonCopy = cancelButton;
  otherButtonCopy = otherButton;
  handlerCopy = handler;
  if (+[ULPlatform isInternalInstall])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:titleCopy forKeyedSubscript:*MEMORY[0x277CBF188]];
    [dictionary setObject:messageCopy forKeyedSubscript:*MEMORY[0x277CBF198]];
    [dictionary setObject:buttonCopy forKeyedSubscript:*MEMORY[0x277CBF1E8]];
    [dictionary setObject:cancelButtonCopy forKeyedSubscript:*MEMORY[0x277CBF1C0]];
    if (otherButtonCopy)
    {
      [dictionary setObject:otherButtonCopy forKeyedSubscript:*MEMORY[0x277CBF218]];
    }

    v21 = [dictionary copy];
    [self _postNotificationWithAlertLevel:level alertOptions:v21 handler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

+ (void)_postNotificationWithAlertLevel:(int64_t)level alertOptions:(id)options handler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  v10 = CFUserNotificationCreate(0, 0.0, [self _userNotificationAlertLevelFlagsFromAlertLevel:level], 0, optionsCopy);

  if (v10)
  {
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v10, 0.0, &responseFlags);
    CFRelease(v10);
    handlerCopy[2](handlerCopy, [self _responseButtonFromOptionFlags:responseFlags]);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

+ (int64_t)_responseButtonFromOptionFlags:(unint64_t)flags
{
  v3 = 1;
  if ((flags & 3) == 2)
  {
    v3 = 2;
  }

  if ((flags & 3) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)_userNotificationAlertLevelFlagsFromAlertLevel:(int64_t)level
{
  if (level >= 3)
  {
    return 3;
  }

  else
  {
    return level;
  }
}

+ (id)_queue
{
  if (_queue_ul_once_token_0 != -1)
  {
    +[ULUserNotification _queue];
  }

  v3 = _queue_ul_once_object_0;

  return v3;
}

void __28__ULUserNotification__queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MicroLocationUtilities.ULUserNotification", v2);
  v1 = _queue_ul_once_object_0;
  _queue_ul_once_object_0 = v0;
}

@end