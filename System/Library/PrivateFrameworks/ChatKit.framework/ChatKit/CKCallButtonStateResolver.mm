@interface CKCallButtonStateResolver
- (id)callStateForCurrentConversation;
- (id)updateCallStateForCallButton:(id)a3;
- (void)_refreshIDSStatusWithCompletion:(id)a3;
- (void)updateForConversation:(id)a3 completion:(id)a4;
@end

@implementation CKCallButtonStateResolver

- (void)updateForConversation:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(CKCallButtonStateResolver *)self setConversation:v6];
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Configuring call state resolver for conversation <%p>.", &v9, 0xCu);
  }

  [(CKCallButtonStateResolver *)self _refreshIDSStatusWithCompletion:v7];
}

- (void)_refreshIDSStatusWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKCallButtonStateResolver *)self conversation];
  v6 = [v5 recipients];
  v7 = [v6 __im_canonicalIDSAddressesFromEntities];

  if ([v7 count])
  {
    v8 = dispatch_group_create();
    v9 = [(CKCallButtonStateResolver *)self conversation];
    v10 = [CKFaceTimeUtilities isModernScreenSharingAvailable:v9];

    if (v10)
    {
      dispatch_group_enter(v8);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__CKCallButtonStateResolver__refreshIDSStatusWithCompletion___block_invoke;
      v13[3] = &unk_1E72EEB58;
      v13[4] = self;
      v14 = v8;
      [CKFaceTimeUtilities queryModernScreenSharingCapabilities:v7 completion:v13];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKCallButtonStateResolver__refreshIDSStatusWithCompletion___block_invoke_77;
    block[3] = &unk_1E72EBDB8;
    v12 = v4;
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
      v18 = [v7 count];
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

- (id)updateCallStateForCallButton:(id)a3
{
  v4 = a3;
  v5 = [(CKCallButtonStateResolver *)self callStateForCurrentConversation];
  v6 = v5;
  if (v5)
  {
    [v4 updateWithStyle:objc_msgSend(v5 availabilityForVideo:"callButtonStyle") audio:objc_msgSend(v5 telephony:"isFaceTimeVideoAvailable") screenSharing:{objc_msgSend(v5, "isFaceTimeAudioAvailable"), objc_msgSend(v5, "isTelephonyAvailable"), objc_msgSend(v5, "isScreenSharingAvailable")}];
  }

  return v6;
}

- (id)callStateForCurrentConversation
{
  v3 = [(CKCallButtonStateResolver *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 conversation];

  if (v5 && ([v5 state] != 3 ? (v6 = objc_msgSend(v5, "state") == 2) : (v6 = 1), v7 = objc_msgSend(MEMORY[0x1E69A5B78], "conversationIsVideoCall:", v5), v8 = objc_msgSend(MEMORY[0x1E69A5B78], "conversationIsAVLessSharePlay:", v5), v9 = objc_msgSend(v5, "state"), (objc_msgSend(v5, "isNearbySession") & 1) == 0))
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

  v15 = [v3 isGroupConversation];
  v16 = [v3 chat];
  v17 = [v16 supportsCapabilities:1024];

  v18 = [CKFaceTimeUtilities isFaceTimeAudioAvailable:v3]& v17;
  v19 = [CKFaceTimeUtilities isFaceTimeVideoAvailable:v3]& v17;
  v20 = [v3 recipient];
  v21 = [(CKCallButtonStateResolver *)self screenSharingCapabilities];
  v22 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:v20 capabilities:v21];

  if ((v15 & 1) == 0)
  {
    if (v18)
    {
      v23 = [v3 chat];
      v18 = [v23 isSMS] ^ 1;
    }

    if (v19)
    {
      v24 = [v3 chat];
      v19 = [v24 isSMS] ^ 1;
    }
  }

  v25 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v26 = [v25 isTranscriptSharingEnabled];

  if (v26)
  {
    v27 = [v3 chat];
    v28 = [v27 isStewieSharingChat];

    v18 = (v28 ^ 1) & v18;
    v19 = (v28 ^ 1) & v19;
  }

  v14 = [CKCallStateResult callStateResultWithButtonStyle:v10 isFaceTimeVideoAvailable:v19 isFaceTimeAudioAvailable:v18 isTelephonyAvailable:0 isScreenSharingAvailable:v22];
LABEL_27:

  return v14;
}

@end