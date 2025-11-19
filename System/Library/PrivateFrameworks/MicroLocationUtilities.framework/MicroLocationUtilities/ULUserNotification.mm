@interface ULUserNotification
+ (id)_queue;
+ (int64_t)_responseButtonFromOptionFlags:(unint64_t)a3;
+ (unint64_t)_userNotificationAlertLevelFlagsFromAlertLevel:(int64_t)a3;
+ (void)_postNotificationWithAlertLevel:(int64_t)a3 alertOptions:(id)a4 handler:(id)a5;
+ (void)_presentWithAlertLevel:(int64_t)a3 title:(id)a4 message:(id)a5 defaultButton:(id)a6 cancelButton:(id)a7 otherButton:(id)a8 handler:(id)a9;
+ (void)presentWithAlertLevel:(int64_t)a3 title:(id)a4 message:(id)a5 defaultButton:(id)a6 cancelButton:(id)a7 otherButton:(id)a8 handler:(id)a9;
@end

@implementation ULUserNotification

+ (void)presentWithAlertLevel:(int64_t)a3 title:(id)a4 message:(id)a5 defaultButton:(id)a6 cancelButton:(id)a7 otherButton:(id)a8 handler:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [a1 _queue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __105__ULUserNotification_presentWithAlertLevel_title_message_defaultButton_cancelButton_otherButton_handler___block_invoke;
  v28[3] = &unk_2798DAA48;
  v35 = a1;
  v36 = a3;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v22 = v20;
  v23 = v19;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v27 = v15;
  dispatch_async(v21, v28);
}

+ (void)_presentWithAlertLevel:(int64_t)a3 title:(id)a4 message:(id)a5 defaultButton:(id)a6 cancelButton:(id)a7 otherButton:(id)a8 handler:(id)a9
{
  v22 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (+[ULPlatform isInternalInstall])
  {
    v20 = [MEMORY[0x277CBEB38] dictionary];
    [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x277CBF188]];
    [v20 setObject:v15 forKeyedSubscript:*MEMORY[0x277CBF198]];
    [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
    [v20 setObject:v17 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
    if (v18)
    {
      [v20 setObject:v18 forKeyedSubscript:*MEMORY[0x277CBF218]];
    }

    v21 = [v20 copy];
    [a1 _postNotificationWithAlertLevel:a3 alertOptions:v21 handler:v19];
  }

  else
  {
    v19[2](v19, 1);
  }
}

+ (void)_postNotificationWithAlertLevel:(int64_t)a3 alertOptions:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = CFUserNotificationCreate(0, 0.0, [a1 _userNotificationAlertLevelFlagsFromAlertLevel:a3], 0, v9);

  if (v10)
  {
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v10, 0.0, &responseFlags);
    CFRelease(v10);
    v8[2](v8, [a1 _responseButtonFromOptionFlags:responseFlags]);
  }

  else
  {
    v8[2](v8, 1);
  }
}

+ (int64_t)_responseButtonFromOptionFlags:(unint64_t)a3
{
  v3 = 1;
  if ((a3 & 3) == 2)
  {
    v3 = 2;
  }

  if ((a3 & 3) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)_userNotificationAlertLevelFlagsFromAlertLevel:(int64_t)a3
{
  if (a3 >= 3)
  {
    return 3;
  }

  else
  {
    return a3;
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