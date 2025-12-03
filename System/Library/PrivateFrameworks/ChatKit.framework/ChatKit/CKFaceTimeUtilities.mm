@interface CKFaceTimeUtilities
+ (BOOL)isFaceTimeAudioAvailable:(id)available;
+ (BOOL)isFaceTimeVideoAvailable:(id)available;
+ (BOOL)isGroupFaceTimeSupported;
+ (BOOL)isModernScreenSharingAvailable:(id)available;
+ (BOOL)isModernScreenSharingAvailableForEntity:(id)entity capabilities:(id)capabilities;
+ (void)queryModernScreenSharingCapabilities:(id)capabilities completion:(id)completion;
+ (void)showCallControlsForConversation:(id)conversation;
@end

@implementation CKFaceTimeUtilities

+ (BOOL)isFaceTimeVideoAvailable:(id)available
{
  availableCopy = available;
  if ([availableCopy isGroupConversation])
  {
    if (![self isGroupFaceTimeSupported])
    {
      faceTimeAvailable = 0;
      goto LABEL_9;
    }

    recipients = [availableCopy recipients];
    v6 = [recipients count];
    faceTimeAvailable = v6 <= +[CKFaceTimeUtilities faceTimeMaxParticipants];
  }

  else
  {
    recipients = [MEMORY[0x1E699BE70] sharedInstance];
    if ([recipients faceTimeSupported])
    {
      mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
      faceTimeAvailable = [mEMORY[0x1E699BE70] faceTimeAvailable];
    }

    else
    {
      faceTimeAvailable = 0;
    }
  }

LABEL_9:
  mEMORY[0x1E699BE68] = [MEMORY[0x1E699BE68] sharedInstance];
  v10 = [mEMORY[0x1E699BE68] availabilityForListenerID:CKFaceTimeServiceAvailabilityKey forService:0];

  if (v10)
  {
    v11 = faceTimeAvailable;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isFaceTimeAudioAvailable:(id)available
{
  availableCopy = available;
  if ([availableCopy isGroupConversation])
  {
    if (![self isGroupFaceTimeSupported])
    {
      LOBYTE(v7) = 0;
      goto LABEL_12;
    }

    recipients = [availableCopy recipients];
    v6 = [recipients count];
    LOBYTE(v7) = v6 <= +[CKFaceTimeUtilities faceTimeMaxParticipants];
  }

  else
  {
    recipients = [MEMORY[0x1E699BE70] sharedInstance];
    if ([recipients faceTimeSupported])
    {
      mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
      if ([mEMORY[0x1E699BE70] callingSupported])
      {
        mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
        v7 = [mEMORY[0x1E699BE70]2 faceTimeBlocked] ^ 1;
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
  mEMORY[0x1E699BE68] = [MEMORY[0x1E699BE68] sharedInstance];
  v11 = [mEMORY[0x1E699BE68] availabilityForListenerID:CKFaceTimeServiceAvailabilityKey forService:2];

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
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  if ([mEMORY[0x1E699BE70] faceTimeSupported])
  {
    mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
    if ([mEMORY[0x1E699BE70]2 multiwayAvailable])
    {
      mEMORY[0x1E699BE70]3 = [MEMORY[0x1E699BE70] sharedInstance];
      v5 = [mEMORY[0x1E699BE70]3 isGreenTea] ^ 1;
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

+ (BOOL)isModernScreenSharingAvailable:(id)available
{
  availableCopy = available;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernScreenSharingEnabled = [mEMORY[0x1E69A8070] isModernScreenSharingEnabled];

  if (isModernScreenSharingEnabled)
  {
    if ([availableCopy isGroupConversation])
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
      mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
      isGreenTea = [mEMORY[0x1E699BE70] isGreenTea];

      if (isGreenTea)
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

      chat = [availableCopy chat];
      isSMS = [chat isSMS];

      if (!isSMS)
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

+ (void)showCallControlsForConversation:(id)conversation
{
  if ([MEMORY[0x1E69A5B78] conversationIsVideoCall:conversation])
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

+ (void)queryModernScreenSharingCapabilities:(id)capabilities completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E69A80B0];
  v7 = *MEMORY[0x1E69A47F0];
  v8 = CKFaceTimeServiceAvailabilityKey;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CKFaceTimeUtilities_queryModernScreenSharingCapabilities_completion___block_invoke;
  v10[3] = &unk_1E72F7FA0;
  v11 = completionCopy;
  v9 = completionCopy;
  [v6 currentRemoteDevicesForDestinations:capabilities service:v7 listenerID:v8 queue:MEMORY[0x1E69E96A0] completionBlock:v10];
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

+ (BOOL)isModernScreenSharingAvailableForEntity:(id)entity capabilities:(id)capabilities
{
  v14 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  iDSCanonicalAddress = [entity IDSCanonicalAddress];
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = iDSCanonicalAddress;
    _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Checking modern screen sharing for recipient %@...", &v12, 0xCu);
  }

  v8 = [capabilitiesCopy objectForKey:iDSCanonicalAddress];

  if (v8)
  {
    v9 = [capabilitiesCopy objectForKey:iDSCanonicalAddress];
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