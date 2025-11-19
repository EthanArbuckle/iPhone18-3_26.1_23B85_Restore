@interface TUCall(PHUIUtilities)
- (BOOL)hasSendMessageCapability;
- (id)sendMessageIntentExtension;
- (uint64_t)disconnectedReasonRequiresCallBackUI;
- (uint64_t)hasSendCustomMessageCapability;
- (uint64_t)shouldPlayInCallSounds;
- (uint64_t)shouldShowAutomaticTelephonyCallFallback;
- (uint64_t)shouldShowFailureAlert;
- (uint64_t)supportsSendMessageIntent;
@end

@implementation TUCall(PHUIUtilities)

- (BOOL)hasSendMessageCapability
{
  v2 = [a1 provider];
  if ([v2 isSystemProvider])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 sendMessageIntentExtension];
    v3 = v4 != 0;
  }

  return v3;
}

- (uint64_t)disconnectedReasonRequiresCallBackUI
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [a1 disconnectedReason];
  v3 = 0;
  if (v2 > 0x18 || ((1 << v2) & 0x1C2C020) == 0)
  {
    goto LABEL_14;
  }

  v4 = [MEMORY[0x277D6EDF8] sharedInstance];
  v5 = [v4 activeConversationForCall:a1];

  if (v5)
  {
    v6 = [v5 isOneToOneModeEnabled];
  }

  else
  {
    v7 = [a1 remoteParticipantHandles];
    v6 = [v7 count] == 1;
  }

  v8 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked];
  if (![a1 isIncoming])
  {
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_10:
    v3 = [a1 isConversation] ^ 1 | v6;
    goto LABEL_11;
  }

  if (!(v8 | (([a1 isConnecting] & 1) == 0)))
  {
    goto LABEL_10;
  }

LABEL_8:
  v3 = 0;
LABEL_11:
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v13 = v3 & 1;
    v14 = 1024;
    v15 = [a1 disconnectedReason];
    v16 = 1024;
    v17 = [a1 isIncoming];
    v18 = 1024;
    v19 = [a1 isConnecting];
    v20 = 1024;
    v21 = v8;
    v22 = 1024;
    v23 = [a1 isConversation];
    v24 = 1024;
    v25 = v6;
    v26 = 1024;
    v27 = v5 == 0;
    _os_log_impl(&dword_2429BC000, v9, OS_LOG_TYPE_DEFAULT, "disconnectedReasonRequiresCallBackUI = %d (disconnectedReason: %d, isIncoming: %d, isConnecting: %d, isSpringBoardPasscodeLocked: %d, isConversation: %d, isOneToOneModeEnabled: %d, conversationIsNil: %d)", buf, 0x32u);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

- (uint64_t)shouldShowFailureAlert
{
  if ([a1 status] != 6)
  {
    return 0;
  }

  v2 = [a1 errorAlertTitle];
  if (v2)
  {
    v3 = [a1 shouldShowAutomaticTelephonyCallFallback] ^ 1;
  }

  else
  {
    v4 = [a1 errorAlertMessage];
    if (v4)
    {
      v3 = [a1 shouldShowAutomaticTelephonyCallFallback] ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (uint64_t)shouldShowAutomaticTelephonyCallFallback
{
  v2 = [a1 disconnectedReason];
  v3 = [a1 provider];
  if ([v3 isFaceTimeProvider] && (objc_msgSend(a1, "isVideo") & 1) == 0)
  {
    v5 = [a1 remoteParticipantHandles];
    if ([v5 count] == 1 && (v2 == 49 || v2 == 30))
    {
      v4 = TUDefaultAppsEnabled();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)shouldPlayInCallSounds
{
  result = [a1 needsManualInCallSounds];
  if (result)
  {

    return [a1 isEndpointOnCurrentDevice];
  }

  return result;
}

- (uint64_t)supportsSendMessageIntent
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = [a1 provider];
  v2 = [v1 bundleIdentifier];

  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [v3 applicationsForUserActivityType:@"INSendMessageIntent"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = PHDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v9;
          _os_log_impl(&dword_2429BC000, v10, OS_LOG_TYPE_DEFAULT, "application %@", buf, 0xCu);
        }

        v11 = [v9 bundleIdentifier];
        v12 = [v11 isEqualToString:v2];

        if (v12)
        {
          v6 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)hasSendCustomMessageCapability
{
  v2 = [a1 provider];
  if ([v2 isSystemProvider])
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 supportsSendMessageIntent];
  }

  return v3;
}

- (id)sendMessageIntentExtension
{
  v37[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 provider];
  if ([v2 isSystemProvider])
  {

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v3 = [a1 provider];
  v4 = [v3 bundleURL];

  if (!v4)
  {
    goto LABEL_13;
  }

  if (sendMessageIntentExtension_onceToken != -1)
  {
    [TUCall(PHUIUtilities) sendMessageIntentExtension];
  }

  if (([sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache containsObject:a1] & 1) == 0)
  {
    [sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache addObject:a1];
    v5 = MEMORY[0x277CCA9C8];
    v37[0] = @"INSendMessageIntent";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v7 = [v5 _intents_extensionMatchingAttributesForIntents:v6];
    v8 = [v7 mutableCopy];

    v9 = [a1 provider];
    v10 = [v9 bundleURL];
    v11 = [v10 path];
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA0B8]];

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__0;
    v31 = __Block_byref_object_dispose__0;
    v32 = 0;
    v12 = dispatch_semaphore_create(0);
    v13 = PHDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v8;
      _os_log_impl(&dword_2429BC000, v13, OS_LOG_TYPE_DEFAULT, "Looking up send message intent extension using attributes: %@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CCA9C8];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38;
    v24 = &unk_278D74BB0;
    v26 = &v27;
    v15 = v12;
    v25 = v15;
    [v14 extensionsWithMatchingAttributes:v8 completion:&v21];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v28[5];
      *buf = 138412546;
      v34 = v17;
      v35 = 2112;
      v36 = a1;
      _os_log_impl(&dword_2429BC000, v16, OS_LOG_TYPE_DEFAULT, "Found send message intent extension %@ for call %@", buf, 0x16u);
    }

    [sendMessageIntentExtension_sendMessageIntentExtensionsCache setObject:v28[5] forKey:{a1, v21, v22, v23, v24}];
    _Block_object_dispose(&v27, 8);
  }

  v18 = [sendMessageIntentExtension_sendMessageIntentExtensionsCache objectForKey:a1];
LABEL_14:
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end