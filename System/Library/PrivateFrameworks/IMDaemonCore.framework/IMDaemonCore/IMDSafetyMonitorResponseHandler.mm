@interface IMDSafetyMonitorResponseHandler
- (BOOL)canHandleNotificationResponse:(id)response userNotificationCenter:(id)center;
- (void)handleNotificationResponse:(id)response userNotificationCenter:(id)center completionHandler:(id)handler;
@end

@implementation IMDSafetyMonitorResponseHandler

- (BOOL)canHandleNotificationResponse:(id)response userNotificationCenter:(id)center
{
  responseCopy = response;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v9 = [userInfo objectForKeyedSubscript:@"CKBBContextKeyBalloonBundleID"];
  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  content2 = [request2 content];
  categoryIdentifier = [content2 categoryIdentifier];

  if ([v9 isEqualToString:*MEMORY[0x277D19708]])
  {
    v14 = 1;
  }

  else
  {
    v15 = IMBalloonExtensionIDWithSuffix();
    if ([v9 isEqualToString:v15])
    {
      v14 = 1;
    }

    else
    {
      actionIdentifier = [responseCopy actionIdentifier];
      v17 = IMSMWorkoutAlwaysPromptActionIdentifier();
      if ([actionIdentifier isEqualToString:v17])
      {
        v14 = 1;
      }

      else
      {
        v14 = [categoryIdentifier isEqualToString:@"com.apple.SafetyMonitor.Suggestions.WorkoutAlwaysPrompt"];
      }
    }
  }

  return v14;
}

- (void)handleNotificationResponse:(id)response userNotificationCenter:(id)center completionHandler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  identifier = [request2 identifier];

  v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D1A508]];
  actionIdentifier = [responseCopy actionIdentifier];
  notification3 = [responseCopy notification];

  request3 = [notification3 request];
  content2 = [request3 content];
  categoryIdentifier = [content2 categoryIdentifier];

  if (actionIdentifier)
  {
    if (-[__CFString isEqualToString:](actionIdentifier, "isEqualToString:", *MEMORY[0x277CE20F0]) && [categoryIdentifier isEqualToString:@"com.apple.SafetyMonitor.Suggestions.WorkoutAlwaysPrompt"])
    {

      actionIdentifier = @"SMWorkoutAlwaysPromptDismissActionIdentifier";
    }

    mEMORY[0x277D1AB78] = [MEMORY[0x277D1AB78] sharedCoordinator];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22B54B760;
    v23[3] = &unk_278704180;
    v25 = handlerCopy;
    v24 = v15;
    [mEMORY[0x277D1AB78] respondToNotificationWithIdentifier:identifier sessionIdentifier:v24 actionIdentifier:actionIdentifier completion:v23];
  }

  else
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D20E8(v22);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end