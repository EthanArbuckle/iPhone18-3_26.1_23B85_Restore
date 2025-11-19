@interface IMTipKitEventReporter
+ (id)sharedInstance;
- (void)sendBiomeSignal:(id)a3;
- (void)sendFilterUnknownSenderStateChangedEvent;
- (void)sendINSendMessageIntentEvent;
- (void)sendJunkInboxOpenedEvent;
- (void)sendReceivedJunkEventIfNeeded;
- (void)sendTapbackSendEvent;
@end

@implementation IMTipKitEventReporter

+ (id)sharedInstance
{
  if (qword_1ED8C9940 != -1)
  {
    sub_1A88C3998();
  }

  v3 = qword_1ED8C95C0;

  return v3;
}

- (void)sendFilterUnknownSenderStateChangedEvent
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Filter Unknown Senders state changed", v4, 2u);
    }
  }

  [(IMTipKitEventReporter *)self sendBiomeSignal:@"com.apple.MobileSMS.filter-unknown-sender-state-changed"];
}

- (void)sendJunkInboxOpenedEvent
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Junk inbox opened", v4, 2u);
    }
  }

  [(IMTipKitEventReporter *)self sendBiomeSignal:@"com.apple.MobileSMS.junk-inbox-opened"];
}

- (void)sendReceivedJunkEventIfNeeded
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"com.apple.MobileSMS.user-previously-received-junk-message"];

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"com.apple.MobileSMS.user-previously-received-junk-message-fus"];

  v7 = +[IMSpamFilterHelper isFilterUnknownSendersEnabled];
  if ((v4 & 1) != 0 || v7)
  {
    if (v6 & 1 | !v7)
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Received junk message. Filter unknown senders ON", v12, 2u);
      }
    }

    v9 = @"com.apple.MobileSMS.user-previously-received-junk-message-fus";
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Received junk message. Filter unknown senders OFF", buf, 2u);
      }
    }

    v9 = @"com.apple.MobileSMS.user-previously-received-junk-message";
  }

  [(IMTipKitEventReporter *)self sendBiomeSignal:v9];
  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v11 setBool:1 forKey:v9];
}

- (void)sendTapbackSendEvent
{
  [(IMTipKitEventReporter *)self sendBiomeSignal:@"com.apple.MobileSMS.send-tapback"];

  MEMORY[0x1EEE66B58](self, sel_sendCoreAnalyticsSilverEvent_);
}

- (void)sendBiomeSignal:(id)a3
{
  v3 = [a3 copy];
  v4 = IMBiomeQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86AD5F0;
  block[3] = &unk_1E7828050;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)sendINSendMessageIntentEvent
{
  v2 = +[TipsNextEventReporter shared];
  [v2 donateSentINSendMessageIntentEvent];
}

@end