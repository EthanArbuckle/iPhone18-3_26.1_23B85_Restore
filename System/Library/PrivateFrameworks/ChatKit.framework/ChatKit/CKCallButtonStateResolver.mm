@interface CKCallButtonStateResolver
- (id)callStateForCurrentConversation;
- (id)updateCallStateForCallButton:(id)button;
- (void)_refreshIDSStatusWithCompletion:(id)completion;
- (void)updateForConversation:(id)conversation completion:(id)completion;
@end

@implementation CKCallButtonStateResolver

- (void)updateForConversation:(id)conversation completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  completionCopy = completion;
  [(CKCallButtonStateResolver *)self setConversation:conversationCopy];
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = conversationCopy;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Configuring call state resolver for conversation <%p>.", &v9, 0xCu);
  }

  [(CKCallButtonStateResolver *)self _refreshIDSStatusWithCompletion:completionCopy];
}

- (void)_refreshIDSStatusWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  conversation = [(CKCallButtonStateResolver *)self conversation];
  recipients = [conversation recipients];
  __im_canonicalIDSAddressesFromEntities = [recipients __im_canonicalIDSAddressesFromEntities];

  if ([__im_canonicalIDSAddressesFromEntities count])
  {
    v8 = dispatch_group_create();
    conversation2 = [(CKCallButtonStateResolver *)self conversation];
    v10 = [CKFaceTimeUtilities isModernScreenSharingAvailable:conversation2];

    if (v10)
    {
      dispatch_group_enter(v8);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__CKCallButtonStateResolver__refreshIDSStatusWithCompletion___block_invoke;
      v13[3] = &unk_1E72EEB58;
      v13[4] = self;
      v14 = v8;
      [CKFaceTimeUtilities queryModernScreenSharingCapabilities:__im_canonicalIDSAddressesFromEntities completion:v13];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKCallButtonStateResolver__refreshIDSStatusWithCompletion___block_invoke_77;
    block[3] = &unk_1E72EBDB8;
    v12 = completionCopy;
    dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[CKCallButtonStateResolver _refreshIDSStatusWithCompletion:]";
      v17 = 2048;
      v18 = [__im_canonicalIDSAddressesFromEntities count];
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s early returning for addresses.count: %lu", buf, 0x16u);
    }
  }
}

void __61__CKCallButtonStateResolver__refreshIDSStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setScreenSharingCapabilities:v3];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = [v3 count];
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Screen sharing capabilities returned with results {count=%ld}.", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __61__CKCallButtonStateResolver__refreshIDSStatusWithCompletion___block_invoke_77(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Finished updating call status and capabilities. Calling completion.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)updateCallStateForCallButton:(id)button
{
  buttonCopy = button;
  callStateForCurrentConversation = [(CKCallButtonStateResolver *)self callStateForCurrentConversation];
  v6 = callStateForCurrentConversation;
  if (callStateForCurrentConversation)
  {
    [buttonCopy updateWithStyle:objc_msgSend(callStateForCurrentConversation availabilityForVideo:"callButtonStyle") audio:objc_msgSend(callStateForCurrentConversation telephony:"isFaceTimeVideoAvailable") screenSharing:{objc_msgSend(callStateForCurrentConversation, "isFaceTimeAudioAvailable"), objc_msgSend(callStateForCurrentConversation, "isTelephonyAvailable"), objc_msgSend(callStateForCurrentConversation, "isScreenSharingAvailable")}];
  }

  return v6;
}

- (id)callStateForCurrentConversation
{
  conversation = [(CKCallButtonStateResolver *)self conversation];
  chat = [conversation chat];
  conversation2 = [chat conversation];

  if (conversation2 && ([conversation2 state] != 3 ? (v6 = objc_msgSend(conversation2, "state") == 2) : (v6 = 1), v7 = objc_msgSend(MEMORY[0x1E69A5B78], "conversationIsVideoCall:", conversation2), v8 = objc_msgSend(MEMORY[0x1E69A5B78], "conversationIsAVLessSharePlay:", conversation2), v9 = objc_msgSend(conversation2, "state"), (objc_msgSend(conversation2, "isNearbySession") & 1) == 0))
  {
    if (v6)
    {
      v11 = 4;
      if (v7)
      {
        v11 = 2;
      }

      v12 = v8 == 0;
      v13 = 6;
    }

    else
    {
      if (v9 == 4)
      {
        v14 = 0;
        goto LABEL_27;
      }

      v11 = 3;
      if (v7)
      {
        v11 = 1;
      }

      v12 = v8 == 0;
      v13 = 5;
    }

    if (v12)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v10 = 0;
  }

  isGroupConversation = [conversation isGroupConversation];
  chat2 = [conversation chat];
  v17 = [chat2 supportsCapabilities:1024];

  v18 = [CKFaceTimeUtilities isFaceTimeAudioAvailable:conversation]& v17;
  v19 = [CKFaceTimeUtilities isFaceTimeVideoAvailable:conversation]& v17;
  recipient = [conversation recipient];
  screenSharingCapabilities = [(CKCallButtonStateResolver *)self screenSharingCapabilities];
  v22 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:recipient capabilities:screenSharingCapabilities];

  if ((isGroupConversation & 1) == 0)
  {
    if (v18)
    {
      chat3 = [conversation chat];
      v18 = [chat3 isSMS] ^ 1;
    }

    if (v19)
    {
      chat4 = [conversation chat];
      v19 = [chat4 isSMS] ^ 1;
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    chat5 = [conversation chat];
    isStewieSharingChat = [chat5 isStewieSharingChat];

    v18 = (isStewieSharingChat ^ 1) & v18;
    v19 = (isStewieSharingChat ^ 1) & v19;
  }

  v14 = [CKCallStateResult callStateResultWithButtonStyle:v10 isFaceTimeVideoAvailable:v19 isFaceTimeAudioAvailable:v18 isTelephonyAvailable:0 isScreenSharingAvailable:v22];
LABEL_27:

  return v14;
}

@end