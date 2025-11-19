@interface CKFaceTimeUtilities
+ (BOOL)isFaceTimeAudioAvailable:(id)a3;
+ (BOOL)isFaceTimeVideoAvailable:(id)a3;
+ (BOOL)isGroupFaceTimeSupported;
+ (BOOL)isModernScreenSharingAvailable:(id)a3;
+ (BOOL)isModernScreenSharingAvailableForEntity:(id)a3 capabilities:(id)a4;
+ (void)queryModernScreenSharingCapabilities:(id)a3 completion:(id)a4;
+ (void)showCallControlsForConversation:(id)a3;
@end

@implementation CKFaceTimeUtilities

+ (BOOL)isFaceTimeVideoAvailable:(id)a3
{
  v4 = a3;
  if ([v4 isGroupConversation])
  {
    if (![a1 isGroupFaceTimeSupported])
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = [v4 recipients];
    v6 = [v5 count];
    v7 = v6 <= +[CKFaceTimeUtilities faceTimeMaxParticipants];
  }

  else
  {
    v5 = [MEMORY[0x1E699BE70] sharedInstance];
    if ([v5 faceTimeSupported])
    {
      v8 = [MEMORY[0x1E699BE70] sharedInstance];
      v7 = [v8 faceTimeAvailable];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_9:
  v9 = [MEMORY[0x1E699BE68] sharedInstance];
  v10 = [v9 availabilityForListenerID:CKFaceTimeServiceAvailabilityKey forService:0];

  if (v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isFaceTimeAudioAvailable:(id)a3
{
  v4 = a3;
  if ([v4 isGroupConversation])
  {
    if (![a1 isGroupFaceTimeSupported])
    {
      LOBYTE(v7) = 0;
      goto LABEL_12;
    }

    v5 = [v4 recipients];
    v6 = [v5 count];
    LOBYTE(v7) = v6 <= +[CKFaceTimeUtilities faceTimeMaxParticipants];
  }

  else
  {
    v5 = [MEMORY[0x1E699BE70] sharedInstance];
    if ([v5 faceTimeSupported])
    {
      v8 = [MEMORY[0x1E699BE70] sharedInstance];
      if ([v8 callingSupported])
      {
        v9 = [MEMORY[0x1E699BE70] sharedInstance];
        v7 = [v9 faceTimeBlocked] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

LABEL_12:
  v10 = [MEMORY[0x1E699BE68] sharedInstance];
  v11 = [v10 availabilityForListenerID:CKFaceTimeServiceAvailabilityKey forService:2];

  if (v11)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isGroupFaceTimeSupported
{
  v2 = [MEMORY[0x1E699BE70] sharedInstance];
  if ([v2 faceTimeSupported])
  {
    v3 = [MEMORY[0x1E699BE70] sharedInstance];
    if ([v3 multiwayAvailable])
    {
      v4 = [MEMORY[0x1E699BE70] sharedInstance];
      v5 = [v4 isGreenTea] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)isModernScreenSharingAvailable:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isModernScreenSharingEnabled];

  if (v5)
  {
    if ([v3 isGroupConversation])
    {
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        v7 = "Modern screen sharing is not available for group chats";
        v8 = &v17;
LABEL_7:
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
      }
    }

    else
    {
      v11 = [MEMORY[0x1E699BE70] sharedInstance];
      v12 = [v11 isGreenTea];

      if (v12)
      {
        v6 = IMLogHandleForCategory();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v16 = 0;
        v7 = "Modern screen sharing cannot be initiated from green tea devices";
        v8 = &v16;
        goto LABEL_7;
      }

      v13 = [v3 chat];
      v14 = [v13 isSMS];

      if (!v14)
      {
        v9 = 1;
        goto LABEL_9;
      }

      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v7 = "Modern screen sharing is not available for SMS";
        v8 = &v15;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Modern screen sharing feature is not enabled";
      v8 = buf;
      goto LABEL_7;
    }
  }

LABEL_8:

  v9 = 0;
LABEL_9:

  return v9;
}

+ (void)showCallControlsForConversation:(id)a3
{
  if ([MEMORY[0x1E69A5B78] conversationIsVideoCall:a3])
  {
    [MEMORY[0x1E695DFF8] faceTimeShowInCallUIURL];
  }

  else
  {
    [MEMORY[0x1E695DFF8] faceTimeShowSystemCallControlsURL];
  }
  v3 = ;
  TUOpenURL();
}

+ (void)queryModernScreenSharingCapabilities:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69A80B0];
  v7 = *MEMORY[0x1E69A47F0];
  v8 = CKFaceTimeServiceAvailabilityKey;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CKFaceTimeUtilities_queryModernScreenSharingCapabilities_completion___block_invoke;
  v10[3] = &unk_1E72F7FA0;
  v11 = v5;
  v9 = v5;
  [v6 currentRemoteDevicesForDestinations:a3 service:v7 listenerID:v8 queue:MEMORY[0x1E69E96A0] completionBlock:v10];
}

void __71__CKFaceTimeUtilities_queryModernScreenSharingCapabilities_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__CKFaceTimeUtilities_queryModernScreenSharingCapabilities_completion___block_invoke_50;
  v5[3] = &unk_1E72F7F78;
  v5[4] = &v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v7[5]);
  }

  _Block_object_dispose(&v6, 8);
}

void __71__CKFaceTimeUtilities_queryModernScreenSharingCapabilities_completion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CKFaceTimeUtilities_queryModernScreenSharingCapabilities_completion___block_invoke_2;
  v9[3] = &unk_1E72F7F50;
  v9[4] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(v11 + 24)];
  [v7 setObject:v8 forKey:v5];

  _Block_object_dispose(&v10, 8);
}

void __71__CKFaceTimeUtilities_queryModernScreenSharingCapabilities_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 capabilities];
  if ([v6 valueForCapability:*MEMORY[0x1E69A5080]] && !objc_msgSend(v6, "valueForCapability:", *MEMORY[0x1E69A5040]))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (BOOL)isModernScreenSharingAvailableForEntity:(id)a3 capabilities:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 IDSCanonicalAddress];
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Checking modern screen sharing for recipient %@...", &v12, 0xCu);
  }

  v8 = [v5 objectForKey:v6];

  if (v8)
  {
    v9 = [v5 objectForKey:v6];
    LODWORD(v8) = [v9 BOOLValue];
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 67109120;
    LODWORD(v13) = v8;
    _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Capability for modern screen sharing: %d", &v12, 8u);
  }

  return v8;
}

@end