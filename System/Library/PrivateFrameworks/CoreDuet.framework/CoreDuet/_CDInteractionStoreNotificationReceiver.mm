@interface _CDInteractionStoreNotificationReceiver
- (_CDInteractionStoreNotificationReceiver)init;
- (void)dealloc;
- (void)postPackedMechanisms:(unint64_t)mechanisms;
@end

@implementation _CDInteractionStoreNotificationReceiver

- (_CDInteractionStoreNotificationReceiver)init
{
  v17.receiver = self;
  v17.super_class = _CDInteractionStoreNotificationReceiver;
  v2 = [(_CDInteractionStoreNotificationReceiver *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    objc_initWeak(&location, v2);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __47___CDInteractionStoreNotificationReceiver_init__block_invoke;
    v14 = &unk_1E7368E78;
    objc_copyWeak(&v15, &location);
    v9 = MEMORY[0x193B00C50](&v11);
    notify_register_dispatch([@"PSStoreChangedNotificationInternal" UTF8String], v2 + 2, *(v2 + 2), v9);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  notifierToken = self->_notifierToken;
  if (notifierToken)
  {
    notify_cancel(notifierToken);
  }

  v4.receiver = self;
  v4.super_class = _CDInteractionStoreNotificationReceiver;
  [(_CDInteractionStoreNotificationReceiver *)&v4 dealloc];
}

- (void)postPackedMechanisms:(unint64_t)mechanisms
{
  mechanismsCopy = mechanisms;
  v11[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x1E695DF70] array];
  v6 = array;
  if ((mechanismsCopy & 0x10000) != 0)
  {
    [array addObject:&unk_1F05EED18];
  }

  if ((mechanismsCopy & 2) != 0)
  {
    [v6 addObject:&unk_1F05EED30];
  }

  if ((mechanismsCopy & 4) != 0)
  {
    [v6 addObject:&unk_1F05EED48];
  }

  if ((mechanismsCopy & 8) != 0)
  {
    [v6 addObject:&unk_1F05EED60];
  }

  if ((mechanismsCopy & 0x10) != 0)
  {
    [v6 addObject:&unk_1F05EED78];
  }

  if ((mechanismsCopy & 0x20) != 0)
  {
    [v6 addObject:&unk_1F05EED90];
  }

  if ((mechanismsCopy & 0x40) != 0)
  {
    [v6 addObject:&unk_1F05EEDA8];
  }

  if ((mechanismsCopy & 0x80) != 0)
  {
    [v6 addObject:&unk_1F05EEDC0];
  }

  if ((mechanismsCopy & 0x100) != 0)
  {
    [v6 addObject:&unk_1F05EEDD8];
  }

  if ((mechanismsCopy & 0x200) != 0)
  {
    [v6 addObject:&unk_1F05EEDF0];
  }

  if ((mechanismsCopy & 0x400) != 0)
  {
    [v6 addObject:&unk_1F05EEE08];
  }

  if ((mechanismsCopy & 0x800) != 0)
  {
    [v6 addObject:&unk_1F05EEE20];
  }

  if ((mechanismsCopy & 0x20000) != 0)
  {
    [v6 addObject:&unk_1F05EEE38];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = @"kPSStoreChangedMechanismsKey";
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"PSStoreChangedNotification" object:0 userInfo:v8];

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x1E69E9840];
}

@end